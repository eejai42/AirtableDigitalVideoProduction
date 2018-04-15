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
    public partial class StaffDirectoriesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<StaffDirectory> StaffDirectories);
        partial void OnAfterGetById(StaffDirectory StaffDirectories, String staffDirectoryId);
        partial void OnBeforePost(StaffDirectory staffdirectory);
        partial void OnAfterPost(StaffDirectory staffdirectory);
        partial void OnBeforePut(StaffDirectory staffdirectory);
        partial void OnAfterPut(StaffDirectory staffdirectory);
        partial void OnBeforeDelete(StaffDirectory staffdirectory);
        partial void OnAfterDelete(StaffDirectory staffdirectory);
        

        public StaffDirectoriesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/StaffDirectory - Gets a list of StaffDirectories
        /// </summary>
        /// <returns>List of StaffDirectories</returns>
        public IEnumerable<StaffDirectory> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllStaffDirectories<StaffDirectory>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.StaffDirectory.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific StaffDirectory based on it's ID
        /// </summary>
        /// <returns>StaffDirectory</returns>
        public StaffDirectory Get(String staffDirectoryId)
        {
            var StaffDirectoriesWhere = String.Format("StaffDirectoryId = '{0}'", staffDirectoryId);
            var result = this.SDM.GetAllStaffDirectories<StaffDirectory>(StaffDirectoriesWhere).FirstOrDefault();
            dc.StaffDirectory.CheckExpand(this.SDM, new StaffDirectory[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, staffDirectoryId);
            return result;
        }

        /// <summary>
        /// Inserts a new StaffDirectory
        /// </summary>
        /// <returns>The inserted StaffDirectory, including the ID assigned</returns>
        public StaffDirectory Post([FromBody]StaffDirectory staffdirectory)
        {// text
            
            if (String.IsNullOrEmpty(staffdirectory.StaffDirectoryId)) staffdirectory.StaffDirectoryId = Guid.NewGuid().ToString();
            this.OnBeforePost(staffdirectory);
            this.SDM.Upsert(staffdirectory);
            this.OnAfterPost(staffdirectory);
            return staffdirectory;
        }

        /// <summary>
        /// Updates a specific StaffDirectory based on it's ID
        /// </summary>
        /// <returns>StaffDirectory</returns>
        public StaffDirectory Put([FromBody]StaffDirectory staffdirectory)
        {
            
            if (String.IsNullOrEmpty(staffdirectory.StaffDirectoryId)) staffdirectory.StaffDirectoryId = Guid.NewGuid().ToString();
            this.OnBeforePut(staffdirectory);
            this.SDM.Upsert(staffdirectory);
            this.OnAfterPut(staffdirectory);
            return staffdirectory;
        }

        /// <summary>
        /// Deletes a specific StaffDirectory based on it's ID
        /// </summary>
        /// <returns>StaffDirectory</returns>
        public void Delete(Guid StaffDirectoryId)
        {
            var staffdirectoryWhere = String.Format("StaffDirectoryId = '{0}'", StaffDirectoryId);
            var staffdirectory = this.SDM.GetAllStaffDirectories<StaffDirectory>(staffdirectoryWhere).FirstOrDefault();
            this.OnBeforeDelete(staffdirectory);
            this.SDM.Delete(staffdirectory);
            this.OnAfterDelete(staffdirectory);
        }
    }
}
