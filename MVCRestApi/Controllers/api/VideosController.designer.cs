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
    public partial class VideosController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Video> Videos);
        partial void OnAfterGetById(Video Videos, String videoId);
        partial void OnBeforePost(Video video);
        partial void OnAfterPost(Video video);
        partial void OnBeforePut(Video video);
        partial void OnAfterPut(Video video);
        partial void OnBeforeDelete(Video video);
        partial void OnAfterDelete(Video video);
        

        public VideosController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Video - Gets a list of Videos
        /// </summary>
        /// <returns>List of Videos</returns>
        public IEnumerable<Video> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllVideos<Video>();
            dc.Video.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Video based on it's ID
        /// </summary>
        /// <returns>Video</returns>
        public Video Get(String videoId)
        {
            var VideosWhere = String.Format("VideoId = '{0}'", videoId);
            var result = this.SDM.GetAllVideos<Video>(VideosWhere).FirstOrDefault();
            dc.Video.CheckExpand(this.SDM, new Video[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, videoId);
            return result;
        }

        /// <summary>
        /// Inserts a new Video
        /// </summary>
        /// <returns>The inserted Video, including the ID assigned</returns>
        public Video Post([FromBody]Video video)
        {// text
            
            if (String.IsNullOrEmpty(video.VideoId)) video.VideoId = Guid.NewGuid().ToString();
            this.OnBeforePost(video);
            this.SDM.Upsert(video);
            this.OnAfterPost(video);
            return video;
        }

        /// <summary>
        /// Updates a specific Video based on it's ID
        /// </summary>
        /// <returns>Video</returns>
        public Video Put([FromBody]Video video)
        {
            
            if (String.IsNullOrEmpty(video.VideoId)) video.VideoId = Guid.NewGuid().ToString();
            this.OnBeforePut(video);
            this.SDM.Upsert(video);
            this.OnAfterPut(video);
            return video;
        }

        /// <summary>
        /// Deletes a specific Video based on it's ID
        /// </summary>
        /// <returns>Video</returns>
        public void Delete(Guid VideoId)
        {
            var videoWhere = String.Format("VideoId = '{0}'", VideoId);
            var video = this.SDM.GetAllVideos<Video>(videoWhere).FirstOrDefault();
            this.OnBeforeDelete(video);
            this.SDM.Delete(video);
            this.OnAfterDelete(video);
        }
    }
}
