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
    public partial class InventoryItemsController : ApiController
    {
        public SqlDataManager SDM { get; }

        partial void OnConstructor();
        partial void OnBeforeGet();
        partial void OnAfterGet(IEnumerable<InventoryItem> InventoryItems);
        partial void OnAfterGetById(InventoryItem InventoryItems, String inventoryItemId);
        partial void OnBeforePost(InventoryItem inventoryitem);
        partial void OnAfterPost(InventoryItem inventoryitem);
        partial void OnBeforePut(InventoryItem inventoryitem);
        partial void OnAfterPut(InventoryItem inventoryitem);
        partial void OnBeforeDelete(InventoryItem inventoryitem);
        partial void OnAfterDelete(InventoryItem inventoryitem);
        

        public InventoryItemsController()
        {
            this.SDM = new SqlDataManager();
            this.OnConstructor();
        }

        /// <summary>
        /// GET api/InventoryItem - Gets a list of InventoryItems
        /// </summary>
        /// <returns>List of InventoryItems</returns>
        public IEnumerable<InventoryItem> Get()
        {
            this.OnBeforeGet();
            var results = this.SDM.GetAllInventoryItems<InventoryItem>()
                            .OrderBy(orderBy => orderBy.Name);
            dc.InventoryItem.CheckExpand(this.SDM, results, HttpContext.Current.Request["expand"]);
            this.OnAfterGet(results);
            return results;
        }

        /// <summary>
        /// Gets a specific InventoryItem based on it's ID
        /// </summary>
        /// <returns>InventoryItem</returns>
        public InventoryItem Get(String inventoryItemId)
        {
            var InventoryItemsWhere = String.Format("InventoryItemId = '{0}'", inventoryItemId);
            var result = this.SDM.GetAllInventoryItems<InventoryItem>(InventoryItemsWhere).FirstOrDefault();
            dc.InventoryItem.CheckExpand(this.SDM, new InventoryItem[] { result }, HttpContext.Current.Request["expand"]);
            this.OnAfterGetById(result, inventoryItemId);
            return result;
        }

        /// <summary>
        /// Inserts a new InventoryItem
        /// </summary>
        /// <returns>The inserted InventoryItem, including the ID assigned</returns>
        public InventoryItem Post([FromBody]InventoryItem inventoryitem)
        {// text
            
            if (String.IsNullOrEmpty(inventoryitem.InventoryItemId)) inventoryitem.InventoryItemId = Guid.NewGuid().ToString();
            this.OnBeforePost(inventoryitem);
            this.SDM.Upsert(inventoryitem);
            this.OnAfterPost(inventoryitem);
            return inventoryitem;
        }

        /// <summary>
        /// Updates a specific InventoryItem based on it's ID
        /// </summary>
        /// <returns>InventoryItem</returns>
        public InventoryItem Put([FromBody]InventoryItem inventoryitem)
        {
            
            if (String.IsNullOrEmpty(inventoryitem.InventoryItemId)) inventoryitem.InventoryItemId = Guid.NewGuid().ToString();
            this.OnBeforePut(inventoryitem);
            this.SDM.Upsert(inventoryitem);
            this.OnAfterPut(inventoryitem);
            return inventoryitem;
        }

        /// <summary>
        /// Deletes a specific InventoryItem based on it's ID
        /// </summary>
        /// <returns>InventoryItem</returns>
        public void Delete(Guid InventoryItemId)
        {
            var inventoryitemWhere = String.Format("InventoryItemId = '{0}'", InventoryItemId);
            var inventoryitem = this.SDM.GetAllInventoryItems<InventoryItem>(inventoryitemWhere).FirstOrDefault();
            this.OnBeforeDelete(inventoryitem);
            this.SDM.Delete(inventoryitem);
            this.OnAfterDelete(inventoryitem);
        }
    }
}
