using AirtableDigitalVideoProduction.Lib.SqlDataManagement;
using AirtableDigitalVideoProduction.Lib.DataClasses;
using dc=AirtableDigitalVideoProduction.Lib.DataClasses;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Web.Http;
using System.Web;

namespace WebApplication1.Areas.RESTApi.Controllers
{
    public partial class AgencyContactsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<AgencyContact> AgencyContacts);
        partial void OnAfterGetById(AgencyContact AgencyContacts, String agencyContactId);
        partial void OnBeforePost(AgencyContact agencycontact);
        partial void OnAfterPost(AgencyContact agencycontact);
        partial void OnBeforePut(AgencyContact agencycontact);
        partial void OnAfterPut(AgencyContact agencycontact);
        partial void OnBeforeDelete(AgencyContact agencycontact);
        partial void OnAfterDelete(AgencyContact agencycontact);
        

        public AgencyContactsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/AgencyContact - Gets a list of AgencyContacts
        /// </summary>
        /// <returns>List of AgencyContacts</returns>
        public IEnumerable<AgencyContact> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllAgencyContacts<AgencyContact>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.AgencyContact.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific AgencyContact based on it's ID
        /// </summary>
        /// <returns>AgencyContact</returns>
        public AgencyContact Get(String agencyContactId)
        {
            var AgencyContactsWhere = String.Format("AgencyContactId = '{0}'", agencyContactId);
            var result = this.SDM.GetAllAgencyContacts<AgencyContact>(AgencyContactsWhere).FirstOrDefault();
            dc.AgencyContact.CheckExpand(this.SDM, new AgencyContact[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, agencyContactId);
            return result;
        }

        /// <summary>
        /// Inserts a new AgencyContact
        /// </summary>
        /// <returns>The inserted AgencyContact, including the ID assigned</returns>
        public AgencyContact Post([FromBody]AgencyContact agencycontact)
        {// text
            
            if (String.IsNullOrEmpty(agencycontact.AgencyContactId)) agencycontact.AgencyContactId = Guid.NewGuid().ToString();
            this.OnBeforePost(agencycontact);
            this.SDM.Upsert(agencycontact);
            this.OnAfterPost(agencycontact);
            return agencycontact;
        }

        /// <summary>
        /// Updates a specific AgencyContact based on it's ID
        /// </summary>
        /// <returns>AgencyContact</returns>
        public AgencyContact Put([FromBody]AgencyContact agencycontact)
        {
            
            if (String.IsNullOrEmpty(agencycontact.AgencyContactId)) agencycontact.AgencyContactId = Guid.NewGuid().ToString();
            this.OnBeforePut(agencycontact);
            this.SDM.Upsert(agencycontact);
            this.OnAfterPut(agencycontact);
            return agencycontact;
        }

        /// <summary>
        /// Deletes a specific AgencyContact based on it's ID
        /// </summary>
        /// <returns>AgencyContact</returns>
        public void Delete(Guid AgencyContactId)
        {
            var agencycontactWhere = String.Format("AgencyContactId = '{0}'", AgencyContactId);
            var agencycontact = this.SDM.GetAllAgencyContacts<AgencyContact>(agencycontactWhere).FirstOrDefault();
            this.OnBeforeDelete(agencycontact);
            this.SDM.Delete(agencycontact);
            this.OnAfterDelete(agencycontact);
        }
    }
}
