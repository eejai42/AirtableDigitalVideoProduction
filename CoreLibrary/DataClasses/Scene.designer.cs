using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class Scene
    {
        private void InitPoco()
        {
            
            
                this.Shots = new BindingList<Shot>();
            
                this.Scenes_InventoryItems = new BindingList<InventoryItem>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "SceneId")]
        public String SceneId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "SceneName")]
        public String SceneName { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Video")]
        public String Video { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Props")]
        public String Props { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Location")]
        public String Location { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Script")]
        public String Script { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "SceneNum")]
        public Nullable<Int32> SceneNum { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Shots")]
        public BindingList<Shot> Shots { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Shots, and load them if requested
        /// </summary>
        public static void CheckExpandShots(SqlDataManager sdm, IEnumerable<Scene> scenes, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("shots", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var scenesWhere = CreateSceneWhere(scenes, "Scene");
                var childShots = sdm.GetAllShots<Shot>(scenesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                scenes.ToList()
                        .ForEach(feScene => feScene.LoadShots(childShots));
            }

        }


        

        
        /// <summary>
        /// Find the related Shots (from the list provided) and attach them locally to the Shots list.
        /// </summary>
        public void LoadShots(IEnumerable<Shot> shots)
        {
            shots.Where(whereShot => whereShot.Scene == this.SceneId)
                    .ToList()
                    .ForEach(feShot => this.Shots.Add(feShot));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Scenes_InventoryItems")]
        public BindingList<InventoryItem> Scenes_InventoryItems { get; set; }
            
        /// <summary>
        /// Check to see if there are any related InventoryItems, and load them if requested
        /// </summary>
        public static void CheckExpandInventoryItems(SqlDataManager sdm, IEnumerable<Scene> scenes, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("inventoryItems", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var scenesWhere = CreateSceneWhere(scenes, "Scenes");
                var childInventoryItems = sdm.GetAllInventoryItems<InventoryItem>(scenesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                scenes.ToList()
                        .ForEach(feScene => feScene.LoadScenes_InventoryItems(childInventoryItems));
            }

        }


        

        
        /// <summary>
        /// Find the related InventoryItems (from the list provided) and attach them locally to the InventoryItems list.
        /// </summary>
        public void LoadScenes_InventoryItems(IEnumerable<InventoryItem> inventoryItems)
        {
            inventoryItems.Where(whereInventoryItem => whereInventoryItem.Scenes == this.SceneId)
                    .ToList()
                    .ForEach(feInventoryItem => this.Scenes_InventoryItems.Add(feInventoryItem));
        }
        

        
        
        private static string CreateSceneWhere(IEnumerable<Scene> scenes, String forignKeyFieldName = "SceneId")
        {
            if (!scenes.Any()) return "1=1";
            else 
            {
                var idList = scenes.Select(selectScene => String.Format("'{0}'", selectScene.SceneId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Scene> scenes, string expandString)
        {
            
            
            
            CheckExpandShots(sdm, scenes, expandString);
            
            
            CheckExpandInventoryItems(sdm, scenes, expandString);
        }
        
    }
}
