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
    public partial class AgenciesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Agency> Agencies);
        partial void OnAfterGetById(Agency Agencies, String agencyId);
        partial void OnBeforePost(Agency agency);
        partial void OnAfterPost(Agency agency);
        partial void OnBeforePut(Agency agency);
        partial void OnAfterPut(Agency agency);
        partial void OnBeforeDelete(Agency agency);
        partial void OnAfterDelete(Agency agency);
        

        public AgenciesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Agency - Gets a list of Agencies
        /// </summary>
        /// <returns>List of Agencies</returns>
        public IEnumerable<Agency> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllAgencies<Agency>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Agency.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Agency based on it's ID
        /// </summary>
        /// <returns>Agency</returns>
        public Agency Get(String agencyId)
        {
            var AgenciesWhere = String.Format("AgencyId = '{0}'", agencyId);
            var result = this.SDM.GetAllAgencies<Agency>(AgenciesWhere).FirstOrDefault();
            dc.Agency.CheckExpand(this.SDM, new Agency[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, agencyId);
            return result;
        }

        /// <summary>
        /// Inserts a new Agency
        /// </summary>
        /// <returns>The inserted Agency, including the ID assigned</returns>
        public Agency Post([FromBody]Agency agency)
        {// text
            
            if (String.IsNullOrEmpty(agency.AgencyId)) agency.AgencyId = Guid.NewGuid().ToString();
            this.OnBeforePost(agency);
            this.SDM.Upsert(agency);
            this.OnAfterPost(agency);
            return agency;
        }

        /// <summary>
        /// Updates a specific Agency based on it's ID
        /// </summary>
        /// <returns>Agency</returns>
        public Agency Put([FromBody]Agency agency)
        {
            
            if (String.IsNullOrEmpty(agency.AgencyId)) agency.AgencyId = Guid.NewGuid().ToString();
            this.OnBeforePut(agency);
            this.SDM.Upsert(agency);
            this.OnAfterPut(agency);
            return agency;
        }

        /// <summary>
        /// Deletes a specific Agency based on it's ID
        /// </summary>
        /// <returns>Agency</returns>
        public void Delete(Guid AgencyId)
        {
            var agencyWhere = String.Format("AgencyId = '{0}'", AgencyId);
            var agency = this.SDM.GetAllAgencies<Agency>(agencyWhere).FirstOrDefault();
            this.OnBeforeDelete(agency);
            this.SDM.Delete(agency);
            this.OnAfterDelete(agency);
        }
    }
}
