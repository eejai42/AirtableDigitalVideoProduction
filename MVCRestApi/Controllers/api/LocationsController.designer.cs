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
    public partial class LocationsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Location> Locations);
        partial void OnAfterGetById(Location Locations, String locationId);
        partial void OnBeforePost(Location location);
        partial void OnAfterPost(Location location);
        partial void OnBeforePut(Location location);
        partial void OnAfterPut(Location location);
        partial void OnBeforeDelete(Location location);
        partial void OnAfterDelete(Location location);
        

        public LocationsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Location - Gets a list of Locations
        /// </summary>
        /// <returns>List of Locations</returns>
        public IEnumerable<Location> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllLocations<Location>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.Location.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Location based on it's ID
        /// </summary>
        /// <returns>Location</returns>
        public Location Get(String locationId)
        {
            var LocationsWhere = String.Format("LocationId = '{0}'", locationId);
            var result = this.SDM.GetAllLocations<Location>(LocationsWhere).FirstOrDefault();
            dc.Location.CheckExpand(this.SDM, new Location[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, locationId);
            return result;
        }

        /// <summary>
        /// Inserts a new Location
        /// </summary>
        /// <returns>The inserted Location, including the ID assigned</returns>
        public Location Post([FromBody]Location location)
        {// text
            
            if (String.IsNullOrEmpty(location.LocationId)) location.LocationId = Guid.NewGuid().ToString();
            this.OnBeforePost(location);
            this.SDM.Upsert(location);
            this.OnAfterPost(location);
            return location;
        }

        /// <summary>
        /// Updates a specific Location based on it's ID
        /// </summary>
        /// <returns>Location</returns>
        public Location Put([FromBody]Location location)
        {
            
            if (String.IsNullOrEmpty(location.LocationId)) location.LocationId = Guid.NewGuid().ToString();
            this.OnBeforePut(location);
            this.SDM.Upsert(location);
            this.OnAfterPut(location);
            return location;
        }

        /// <summary>
        /// Deletes a specific Location based on it's ID
        /// </summary>
        /// <returns>Location</returns>
        public void Delete(Guid LocationId)
        {
            var locationWhere = String.Format("LocationId = '{0}'", LocationId);
            var location = this.SDM.GetAllLocations<Location>(locationWhere).FirstOrDefault();
            this.OnBeforeDelete(location);
            this.SDM.Delete(location);
            this.OnAfterDelete(location);
        }
    }
}
