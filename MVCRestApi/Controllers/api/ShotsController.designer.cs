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
    public partial class ShotsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Shot> Shots);
        partial void OnAfterGetById(Shot Shots, String shotId);
        partial void OnBeforePost(Shot shot);
        partial void OnAfterPost(Shot shot);
        partial void OnBeforePut(Shot shot);
        partial void OnAfterPut(Shot shot);
        partial void OnBeforeDelete(Shot shot);
        partial void OnAfterDelete(Shot shot);
        

        public ShotsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Shot - Gets a list of Shots
        /// </summary>
        /// <returns>List of Shots</returns>
        public IEnumerable<Shot> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllShots<Shot>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Shot.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Shot based on it's ID
        /// </summary>
        /// <returns>Shot</returns>
        public Shot Get(String shotId)
        {
            var ShotsWhere = String.Format("ShotId = '{0}'", shotId);
            var result = this.SDM.GetAllShots<Shot>(ShotsWhere).FirstOrDefault();
            dc.Shot.CheckExpand(this.SDM, new Shot[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, shotId);
            return result;
        }

        /// <summary>
        /// Inserts a new Shot
        /// </summary>
        /// <returns>The inserted Shot, including the ID assigned</returns>
        public Shot Post([FromBody]Shot shot)
        {// text
            
            if (String.IsNullOrEmpty(shot.ShotId)) shot.ShotId = Guid.NewGuid().ToString();
            this.OnBeforePost(shot);
            this.SDM.Upsert(shot);
            this.OnAfterPost(shot);
            return shot;
        }

        /// <summary>
        /// Updates a specific Shot based on it's ID
        /// </summary>
        /// <returns>Shot</returns>
        public Shot Put([FromBody]Shot shot)
        {
            
            if (String.IsNullOrEmpty(shot.ShotId)) shot.ShotId = Guid.NewGuid().ToString();
            this.OnBeforePut(shot);
            this.SDM.Upsert(shot);
            this.OnAfterPut(shot);
            return shot;
        }

        /// <summary>
        /// Deletes a specific Shot based on it's ID
        /// </summary>
        /// <returns>Shot</returns>
        public void Delete(Guid ShotId)
        {
            var shotWhere = String.Format("ShotId = '{0}'", ShotId);
            var shot = this.SDM.GetAllShots<Shot>(shotWhere).FirstOrDefault();
            this.OnBeforeDelete(shot);
            this.SDM.Delete(shot);
            this.OnAfterDelete(shot);
        }
    }
}
