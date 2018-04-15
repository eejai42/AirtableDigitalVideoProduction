using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class Agency
    {
        private void InitPoco()
        {
            
            
                this.Videos = new BindingList<Video>();
            
                this.AgencyContacts = new BindingList<AgencyContact>();
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "AgencyId")]
        public String AgencyId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Videos")]
        public BindingList<Video> Videos { get; set; }
            
        /// <summary>
        /// Check to see if there are any related Videos, and load them if requested
        /// </summary>
        public static void CheckExpandVideos(SqlDataManager sdm, IEnumerable<Agency> agencies, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("videos", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var agenciesWhere = CreateAgencyWhere(agencies, "Agency");
                var childVideos = sdm.GetAllVideos<Video>(agenciesWhere);

                agencies.ToList()
                        .ForEach(feAgency => feAgency.LoadVideos(childVideos));
            }

        }


        

        
        /// <summary>
        /// Find the related Videos (from the list provided) and attach them locally to the Videos list.
        /// </summary>
        public void LoadVideos(IEnumerable<Video> videos)
        {
            videos.Where(whereVideo => whereVideo.Agency == this.AgencyId)
                    .ToList()
                    .ForEach(feVideo => this.Videos.Add(feVideo));
        }
        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "AgencyContacts")]
        public BindingList<AgencyContact> AgencyContacts { get; set; }
            
        /// <summary>
        /// Check to see if there are any related AgencyContacts, and load them if requested
        /// </summary>
        public static void CheckExpandAgencyContacts(SqlDataManager sdm, IEnumerable<Agency> agencies, string expandString)
        {
            expandString = expandString.SafeToString();

            if (String.Equals(expandString, "all", StringComparison.OrdinalIgnoreCase) || expandString.IndexOf("agencyContacts", StringComparison.OrdinalIgnoreCase) >= 0)
            {
                var agenciesWhere = CreateAgencyWhere(agencies, "Agency");
                var childAgencyContacts = sdm.GetAllAgencyContacts<AgencyContact>(agenciesWhere)
                .OrderBy(orderBy => orderBy.Name)
            ;

                agencies.ToList()
                        .ForEach(feAgency => feAgency.LoadAgencyContacts(childAgencyContacts));
            }

        }


        

        
        /// <summary>
        /// Find the related AgencyContacts (from the list provided) and attach them locally to the AgencyContacts list.
        /// </summary>
        public void LoadAgencyContacts(IEnumerable<AgencyContact> agencyContacts)
        {
            agencyContacts.Where(whereAgencyContact => whereAgencyContact.Agency == this.AgencyId)
                    .ToList()
                    .ForEach(feAgencyContact => this.AgencyContacts.Add(feAgencyContact));
        }
        

        
        
        private static string CreateAgencyWhere(IEnumerable<Agency> agencies, String forignKeyFieldName = "AgencyId")
        {
            if (!agencies.Any()) return "1=1";
            else 
            {
                var idList = agencies.Select(selectAgency => String.Format("'{0}'", selectAgency.AgencyId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<Agency> agencies, string expandString)
        {
            
            
            
            CheckExpandVideos(sdm, agencies, expandString);
            
            
            CheckExpandAgencyContacts(sdm, agencies, expandString);
        }
        
    }
}
