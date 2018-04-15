using System;
using System.ComponentModel;
using Newtonsoft.Json;
using System.Collections.Generic;
using System.Linq;
using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using CoreLibrary.Extensions;

namespace AirtableDigitalVideoProduction.Lib.DataClasses
{                            
    public partial class AgencyContact
    {
        private void InitPoco()
        {
            
            

        }

        
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "AgencyContactId")]
        public String AgencyContactId { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Name")]
        public String Name { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Phone")]
        public String Phone { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Email")]
        public String Email { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Team")]
        public String Team { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "Agency")]
        public String Agency { get; set; }
    
        [JsonProperty(DefaultValueHandling = DefaultValueHandling.IgnoreAndPopulate, PropertyName = "createdTime")]
        public Nullable<DateTime> createdTime { get; set; }
    

        

        
        
        private static string CreateAgencyContactWhere(IEnumerable<AgencyContact> agencyContacts, String forignKeyFieldName = "AgencyContactId")
        {
            if (!agencyContacts.Any()) return "1=1";
            else 
            {
                var idList = agencyContacts.Select(selectAgencyContact => String.Format("'{0}'", selectAgencyContact.AgencyContactId));
                var csIdList = String.Join(",", idList);
                return String.Format("{0} in ({1})", forignKeyFieldName, csIdList);
            }
        }
        
        public static void CheckExpand(SqlDataManager sdm, IEnumerable<AgencyContact> agencyContacts, string expandString)
        {
            
        }
        
    }
}
