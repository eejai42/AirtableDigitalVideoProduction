using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class StaffDirectory
    {
        private void InitPoco()
        {
            
            
                this.Writer_Videos = new BindingList<Video>();
            
                this.Editor_Videos = new BindingList<Video>();
            
                this.FactCheck_Videos = new BindingList<Video>();
            
                this.HostVOArtist_Videos = new BindingList<Video>();
            
                this.Whocurrentlyhasit_InventoryItems = new BindingList<InventoryItem>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "StaffDirectoryId")]
        public String StaffDirectoryId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Title")]
        public String Title { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Team")]
        public String Team { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Email")]
        public String Email { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Office")]
        public String Office { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "CellPhone")]
        public String CellPhone { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "PropsEquipmentinPossession")]
        public String PropsEquipmentinPossession { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Writer_Videos")]
        public BindingList<Video> Writer_Videos { get; set; }
            
     


        

        
        /// <summary>
        /// Find the related Videos (from the list provided) and attach them locally to the Videos list.
        /// </summary>
        public void LoadWriter_Videos(IEnumerable<Video> videos)
        {
            videos.Where(whereVideo => whereVideo.Writer == this.StaffDirectoryId)
                    .ToList()
                    .ForEach(feVideo => this.Writer_Videos.Add(feVideo));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Editor_Videos")]
        public BindingList<Video> Editor_Videos { get; set; }
            
      


        

        
        /// <summary>
        /// Find the related Videos (from the list provided) and attach them locally to the Videos list.
        /// </summary>
        public void LoadEditor_Videos(IEnumerable<Video> videos)
        {
            videos.Where(whereVideo => whereVideo.Editor == this.StaffDirectoryId)
                    .ToList()
                    .ForEach(feVideo => this.Editor_Videos.Add(feVideo));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "FactCheck_Videos")]
        public BindingList<Video> FactCheck_Videos { get; set; }
            
     
        

        
        /// <summary>
        /// Find the related Videos (from the list provided) and attach them locally to the Videos list.
        /// </summary>
        public void LoadFactCheck_Videos(IEnumerable<Video> videos)
        {
            videos.Where(whereVideo => whereVideo.FactCheck == this.StaffDirectoryId)
                    .ToList()
                    .ForEach(feVideo => this.FactCheck_Videos.Add(feVideo));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "HostVOArtist_Videos")]
        public BindingList<Video> HostVOArtist_Videos { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Videos, and load them if requested
        /// </summary>
        public static void CheckExpandVideos(SqlDataManager sdm, IEnumerable<StaffDirectory> staffDirectories, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("videos", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var staffDirectoriesWhere = CreateStaffDirectoryWhere(staffDirectories, "HostVOArtist");
                var childVideos = sdm.GetAllVideos<Video>(staffDirectoriesWhere);

                staffDirectories.ToList()
                        .ForEach(feStaffDirectory => feStaffDirectory.LoadHostVOArtist_Videos(childVideos));
            }

        }


        

        
        /// <summary>
        /// Find the related Videos (from the list provided) and attach them locally to the Videos list.
        /// </summary>
        public void LoadHostVOArtist_Videos(IEnumerable<Video> videos)
        {
            videos.Where(whereVideo => whereVideo.HostVOArtist == this.StaffDirectoryId)
                    .ToList()
                    .ForEach(feVideo => this.HostVOArtist_Videos.Add(feVideo));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Whocurrentlyhasit_InventoryItems")]
        public BindingList<InventoryItem> Whocurrentlyhasit_InventoryItems { get; set; }
            
        /// <summary>
        /// Check to see if there are any related InventoryItems, and load them if requested
        /// </summary>
        public static void CheckExpandInventoryItems(SqlDataManager sdm, IEnumerable<StaffDirectory> staffDirectories, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("inventoryItems", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var staffDirectoriesWhere = CreateStaffDirectoryWhere(staffDirectories, "Whocurrentlyhasit");
                var childInventoryItems = sdm.GetAllInventoryItems<InventoryItem>(staffDirectoriesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                staffDirectories.ToList()
                        .ForEach(feStaffDirectory => feStaffDirectory.LoadWhocurrentlyhasit_InventoryItems(childInventoryItems));
            }

        }


        

        
        /// <summary>
        /// Find the related InventoryItems (from the list provided) and attach them locally to the InventoryItems list.
        /// </summary>
        public void LoadWhocurrentlyhasit_InventoryItems(IEnumerable<InventoryItem> inventoryItems)
        {
            inventoryItems.Where(whereInventoryItem => whereInventoryItem.Whocurrentlyhasit == this.StaffDirectoryId)
                    .ToList()
                    .ForEach(feInventoryItem => this.Whocurrentlyhasit_InventoryItems.Add(feInventoryItem));
        }
        

        
        
        private static string CreateStaffDirectoryWhere(IEnumerable<StaffDirectory> staffDirectories, String forignKeyFieldName = "StaffDirectoryId")
        {
            if (!staffDirectories.Any()) return "1=1";
            else 
            {
                var idList = staffDirectories.Select(selectStaffDirectory => String.Format("'{0}'", selectStaffDirectory.StaffDirectoryId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<StaffDirectory> staffDirectories, string expandString)
        {
            
            
            
            CheckExpandVideos(sdm, staffDirectories, expandString);
            
            
            CheckExpandVideos(sdm, staffDirectories, expandString);
            
            
            CheckExpandVideos(sdm, staffDirectories, expandString);
            
            
            CheckExpandVideos(sdm, staffDirectories, expandString);
            
            
            CheckExpandInventoryItems(sdm, staffDirectories, expandString);
        }
        
    }
}
