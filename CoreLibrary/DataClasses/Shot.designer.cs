using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class Shot
    {
        private void InitPoco()
        {
            
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ShotId")]
        public String ShotId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Scene")]
        public String Scene { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ShotSize")]
        public String ShotSize { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Angle")]
        public String Angle { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "CameraMovement")]
        public String CameraMovement { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Lens")]
        public String Lens { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ShootDate")]
        public Nullable<DateTime> ShootDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ShotNum")]
        public Nullable<Int32> ShotNum { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public Nullable<decimal> Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Video")]
        public String Video { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        

        
        
        private static string CreateShotWhere(IEnumerable<Shot> shots, String forignKeyFieldName = "ShotId")
        {
            if (!shots.Any()) return "1=1";
            else 
            {
                var idList = shots.Select(selectShot => String.Format("'{0}'", selectShot.ShotId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Shot> shots, string expandString)
        {
            
        }
        
    }
}
