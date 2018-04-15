using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class InventoryItem
    {
        private void InitPoco()
        {
            
            
                this.PropsEquipmentinPossession_StaffDirectories = new BindingList<StaffDirectory>();
            
                this.Props_Scenes = new BindingList<Scene>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "InventoryItemId")]
        public String InventoryItemId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Type")]
        public String Type { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Source")]
        public String Source { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Status")]
        public String Status { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Whocurrentlyhasit")]
        public String Whocurrentlyhasit { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Scenes")]
        public String Scenes { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "NextShootDate")]
        public Nullable<DateTime> NextShootDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PropsEquipmentinPossession_StaffDirectories")]
        public BindingList<StaffDirectory> PropsEquipmentinPossession_StaffDirectories { get; set; }
            
        /// <summary>
        /// Check to see if there are any related StaffDirectories, and load them if requested
        /// </summary>
        public static void CheckExpandStaffDirectories(SqlDataManager sdm, IEnumerable<InventoryItem> inventoryItems, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("staffDirectories", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var inventoryItemsWhere = CreateInventoryItemWhere(inventoryItems, "PropsEquipmentinPossession");
                var childStaffDirectories = sdm.GetAllStaffDirectories<StaffDirectory>(inventoryItemsWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                inventoryItems.ToList()
                        .ForEach(feInventoryItem => feInventoryItem.LoadPropsEquipmentinPossession_StaffDirectories(childStaffDirectories));
            }

        }


        

        
        /// <summary>
        /// Find the related StaffDirectories (from the list provided) and attach them locally to the StaffDirectories list.
        /// </summary>
        public void LoadPropsEquipmentinPossession_StaffDirectories(IEnumerable<StaffDirectory> staffDirectories)
        {
            staffDirectories.Where(whereStaffDirectory => whereStaffDirectory.PropsEquipmentinPossession == this.InventoryItemId)
                    .ToList()
                    .ForEach(feStaffDirectory => this.PropsEquipmentinPossession_StaffDirectories.Add(feStaffDirectory));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Props_Scenes")]
        public BindingList<Scene> Props_Scenes { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Scenes, and load them if requested
        /// </summary>
        public static void CheckExpandScenes(SqlDataManager sdm, IEnumerable<InventoryItem> inventoryItems, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("scenes", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var inventoryItemsWhere = CreateInventoryItemWhere(inventoryItems, "Props");
                var childScenes = sdm.GetAllScenes<Scene>(inventoryItemsWhere);

                inventoryItems.ToList()
                        .ForEach(feInventoryItem => feInventoryItem.LoadProps_Scenes(childScenes));
            }

        }


        

        
        /// <summary>
        /// Find the related Scenes (from the list provided) and attach them locally to the Scenes list.
        /// </summary>
        public void LoadProps_Scenes(IEnumerable<Scene> scenes)
        {
            scenes.Where(whereScene => whereScene.Props == this.InventoryItemId)
                    .ToList()
                    .ForEach(feScene => this.Props_Scenes.Add(feScene));
        }
        

        
        
        private static string CreateInventoryItemWhere(IEnumerable<InventoryItem> inventoryItems, String forignKeyFieldName = "InventoryItemId")
        {
            if (!inventoryItems.Any()) return "1=1";
            else 
            {
                var idList = inventoryItems.Select(selectInventoryItem => String.Format("'{0}'", selectInventoryItem.InventoryItemId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<InventoryItem> inventoryItems, string expandString)
        {
            
            
            
            CheckExpandStaffDirectories(sdm, inventoryItems, expandString);
            
            
            CheckExpandScenes(sdm, inventoryItems, expandString);
        }
        
    }
}
