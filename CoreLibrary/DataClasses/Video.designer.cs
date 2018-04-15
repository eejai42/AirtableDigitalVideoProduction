using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class Video
    {
        private void InitPoco()
        {
            
            
                this.Shots = new BindingList<Shot>();
            
                this.Scenes = new BindingList<Scene>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "VideoId")]
        public String VideoId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "SlugName")]
        public String SlugName { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Writer")]
        public String Writer { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Platform")]
        public String Platform { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Format")]
        public String Format { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ReleaseDate")]
        public Nullable<DateTime> ReleaseDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ProjectStatus")]
        public String ProjectStatus { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Editor")]
        public String Editor { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "FactCheck")]
        public String FactCheck { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ScriptURL")]
        public String ScriptURL { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "HostVOArtist")]
        public String HostVOArtist { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ScriptDeadline")]
        public Nullable<DateTime> ScriptDeadline { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ShootDate")]
        public Nullable<DateTime> ShootDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ReviewCutLatest")]
        public String ReviewCutLatest { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Signoff")]
        public String Signoff { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "ShootPlan")]
        public String ShootPlan { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "LIVEURL")]
        public String LIVEURL { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "AssignedEditDate")]
        public Nullable<DateTime> AssignedEditDate { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "RightsClearancesStatus")]
        public String RightsClearancesStatus { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Series")]
        public String Series { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "TargetLengthminutes")]
        public Nullable<Int32> TargetLengthminutes { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Budget")]
        public Nullable<Int32> Budget { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Spend")]
        public Nullable<Int32> Spend { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Agency")]
        public String Agency { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "RemainingBudget")]
        public Nullable<Int32> RemainingBudget { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Shots")]
        public BindingList<Shot> Shots { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Shots, and load them if requested
        /// </summary>
        public static void CheckExpandShots(SqlDataManager sdm, IEnumerable<Video> videos, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("shots", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var videosWhere = CreateVideoWhere(videos, "Video");
                var childShots = sdm.GetAllShots<Shot>(videosWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                videos.ToList()
                        .ForEach(feVideo => feVideo.LoadShots(childShots));
            }

        }


        

        
        /// <summary>
        /// Find the related Shots (from the list provided) and attach them locally to the Shots list.
        /// </summary>
        public void LoadShots(IEnumerable<Shot> shots)
        {
            shots.Where(whereShot => whereShot.Video == this.VideoId)
                    .ToList()
                    .ForEach(feShot => this.Shots.Add(feShot));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Scenes")]
        public BindingList<Scene> Scenes { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Scenes, and load them if requested
        /// </summary>
        public static void CheckExpandScenes(SqlDataManager sdm, IEnumerable<Video> videos, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("scenes", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var videosWhere = CreateVideoWhere(videos, "Video");
                var childScenes = sdm.GetAllScenes<Scene>(videosWhere);

                videos.ToList()
                        .ForEach(feVideo => feVideo.LoadScenes(childScenes));
            }

        }


        

        
        /// <summary>
        /// Find the related Scenes (from the list provided) and attach them locally to the Scenes list.
        /// </summary>
        public void LoadScenes(IEnumerable<Scene> scenes)
        {
            scenes.Where(whereScene => whereScene.Video == this.VideoId)
                    .ToList()
                    .ForEach(feScene => this.Scenes.Add(feScene));
        }
        

        
        
        private static string CreateVideoWhere(IEnumerable<Video> videos, String forignKeyFieldName = "VideoId")
        {
            if (!videos.Any()) return "1=1";
            else 
            {
                var idList = videos.Select(selectVideo => String.Format("'{0}'", selectVideo.VideoId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Video> videos, string expandString)
        {
            
            
            
            CheckExpandShots(sdm, videos, expandString);
            
            
            CheckExpandScenes(sdm, videos, expandString);
        }
        
    }
}
