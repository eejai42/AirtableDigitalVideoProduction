import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class StaffDirectoriesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getStaffDirectories();
        
    }
    
    public StaffDirectoriesState = siteMap['StaffDirectories'];

    public pages : any;

    

    public StaffDirectoryState = siteMap['StaffDirectory'];
    public parent : any;
    public staffDirectories: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getStaffDirectories() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.staffDirectories = result.StaffDirectories;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getStaffDirectories(); }

    addNewStaffDirectory() { // 
        var newStaffDirectory = {
        
            PropsEquipmentinPossession
             : this.parent.inventoryitem.InventoryItemId,
            "Name" : "New StaffDirectory " + (this.staffDirectories ? this.staffDirectories.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewStaffDirectory(newStaffDirectory)
            .then(data => {
                
                this.parent.reload();
                this.getStaffDirectories();
                this.goToState(this.StaffDirectoryState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, staffDirectory = {}, editMode = false) : Promise<any> {
        return this.goToState(state, staffDirectory, editMode, true);
    }

    goToState(state, staffDirectory = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { staffdirectory : staffDirectory, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { staffdirectory : staffDirectory, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

