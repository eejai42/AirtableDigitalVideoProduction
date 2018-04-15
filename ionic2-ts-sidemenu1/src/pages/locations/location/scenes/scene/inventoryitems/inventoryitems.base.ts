import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class InventoryItemsBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getInventoryItems();
        
    }
    
    public InventoryItemsState = siteMap['InventoryItems'];

    public pages : any;

    

    public InventoryItemState = siteMap['InventoryItem'];
    public parent : any;
    public inventoryItems: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getInventoryItems() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.inventoryItems = result.InventoryItems;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getInventoryItems(); }

    addNewInventoryItem() { // 
        var newInventoryItem = {
        
            Scenes
             : this.parent.scene.SceneId,
            "Name" : "New InventoryItem " + (this.inventoryItems ? this.inventoryItems.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewInventoryItem(newInventoryItem)
            .then(data => {
                
                this.parent.reload();
                this.getInventoryItems();
                this.goToState(this.InventoryItemState, data, true);
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

