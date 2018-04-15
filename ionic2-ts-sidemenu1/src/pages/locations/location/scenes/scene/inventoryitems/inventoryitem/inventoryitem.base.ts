import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class InventoryItemBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.inventoryItem = this.navParams.get('inventoryitem') || this.inventoryItem;
        this.getInventoryItem();
        this.editMode = this.navParams.get("editMode");
    }
    
    public InventoryItemState = siteMap['InventoryItem'];

    public pages : any;

    

    public StaffDirectoriesState = siteMap['StaffDirectories'];
    public parent : any;

    
    public inventoryitem: any = {};
    
    public inventoryItem: any = {};
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getInventoryItem() {
        return new Promise(resolve => {
            let inventoryitem = this.navParams.get("inventoryitem");
            if (!inventoryitem) inventoryitem = this.navParams.get("inventoryItem");

            
            this.apiSvc.getInventoryItem(inventoryitem)
                .then(data => {
                    this.inventoryitem = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.inventoryitem.StaffDirectories && this.inventoryitem.StaffDirectories.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getInventoryItem(); }

    updateInventoryItem(theInventoryItemToUpdate) {
            

        this.apiSvc.updateInventoryItem(theInventoryItemToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getInventoryItem();
                        this.editMode = false;
                    });
            });
            
    }


    deleteInventoryItem() {
        

        this.apiSvc.deleteInventoryItem(this.inventoryitem)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, inventoryItem = {}, editMode = false) : Promise<any> {
        return this.goToState(state, inventoryItem, editMode, true);
    }

    goToState(state, inventoryItem = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { inventoryitem : inventoryItem, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { inventoryitem : inventoryItem, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

