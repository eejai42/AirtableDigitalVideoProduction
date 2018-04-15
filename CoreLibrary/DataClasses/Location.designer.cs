using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class Location
    {
        private void InitPoco()
        {
            
            
                this.Scenes = new BindingList<Scene>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "LocationId")]
        public String LocationId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Address")]
        public String Address { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "MainContact")]
        public String MainContact { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Hours")]
        public String Hours { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "CurrentStatus")]
        public String CurrentStatus { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Scenes")]
        public BindingList<Scene> Scenes { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Scenes, and load them if requested
        /// </summary>
        public static void CheckExpandScenes(SqlDataManager sdm, IEnumerable<Location> locations, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("scenes", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var locationsWhere = CreateLocationWhere(locations, "Location");
                var childScenes = sdm.GetAllScenes<Scene>(locationsWhere);

                locations.ToList()
                        .ForEach(feLocation => feLocation.LoadScenes(childScenes));
            }

        }


        

        
        /// <summary>
        /// Find the related Scenes (from the list provided) and attach them locally to the Scenes list.
        /// </summary>
        public void LoadScenes(IEnumerable<Scene> scenes)
        {
            scenes.Where(whereScene => whereScene.Location == this.LocationId)
                    .ToList()
                    .ForEach(feScene => this.Scenes.Add(feScene));
        }
        

        
        
        private static string CreateLocationWhere(IEnumerable<Location> locations, String forignKeyFieldName = "LocationId")
        {
            if (!locations.Any()) return "1=1";
            else 
            {
                var idList = locations.Select(selectLocation => String.Format("'{0}'", selectLocation.LocationId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Location> locations, string expandString)
        {
            
            
            
            CheckExpandScenes(sdm, locations, expandString);
        }
        
    }
}
