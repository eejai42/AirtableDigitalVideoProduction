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
    public partial class ScenesController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<Scene> Scenes);
        partial void OnAfterGetById(Scene Scenes, String sceneId);
        partial void OnBeforePost(Scene scene);
        partial void OnAfterPost(Scene scene);
        partial void OnBeforePut(Scene scene);
        partial void OnAfterPut(Scene scene);
        partial void OnBeforeDelete(Scene scene);
        partial void OnAfterDelete(Scene scene);
        

        public ScenesController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/Scene - Gets a list of Scenes
        /// </summary>
        /// <returns>List of Scenes</returns>
        public IEnumerable<Scene> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllScenes<Scene>();
            dc.Scene.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific Scene based on it's ID
        /// </summary>
        /// <returns>Scene</returns>
        public Scene Get(String sceneId)
        {
            var ScenesWhere = String.Format("SceneId = '{0}'", sceneId);
            var result = this.SDM.GetAllScenes<Scene>(ScenesWhere).FirstOrDefault();
            dc.Scene.CheckExpand(this.SDM, new Scene[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, sceneId);
            return result;
        }

        /// <summary>
        /// Inserts a new Scene
        /// </summary>
        /// <returns>The inserted Scene, including the ID assigned</returns>
        public Scene Post([FromBody]Scene scene)
        {// text
            
            if (String.IsNullOrEmpty(scene.SceneId)) scene.SceneId = Guid.NewGuid().ToString();
            this.OnBeforePost(scene);
            this.SDM.Upsert(scene);
            this.OnAfterPost(scene);
            return scene;
        }

        /// <summary>
        /// Updates a specific Scene based on it's ID
        /// </summary>
        /// <returns>Scene</returns>
        public Scene Put([FromBody]Scene scene)
        {
            
            if (String.IsNullOrEmpty(scene.SceneId)) scene.SceneId = Guid.NewGuid().ToString();
            this.OnBeforePut(scene);
            this.SDM.Upsert(scene);
            this.OnAfterPut(scene);
            return scene;
        }

        /// <summary>
        /// Deletes a specific Scene based on it's ID
        /// </summary>
        /// <returns>Scene</returns>
        public void Delete(Guid SceneId)
        {
            var sceneWhere = String.Format("SceneId = '{0}'", SceneId);
            var scene = this.SDM.GetAllScenes<Scene>(sceneWhere).FirstOrDefault();
            this.OnBeforeDelete(scene);
            this.SDM.Delete(scene);
            this.OnAfterDelete(scene);
        }
    }
}
