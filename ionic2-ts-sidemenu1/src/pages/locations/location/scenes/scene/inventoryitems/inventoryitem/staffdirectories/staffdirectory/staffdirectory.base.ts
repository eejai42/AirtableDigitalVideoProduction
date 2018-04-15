import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class StaffDirectoryBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.staffDirectory = this.navParams.get('staffdirectory') || this.staffDirectory;
        this.getStaffDirectory();
        this.editMode = this.navParams.get("editMode");
    }
    
    public StaffDirectoryState = siteMap['StaffDirectory'];

    public pages : any;

    

    public VideosState = siteMap['Videos'];
    public parent : any;

    
    public staffdirectory: any = {};
    
    public staffDirectory: any = {};
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getStaffDirectory() {
        return new Promise(resolve => {
            let staffdirectory = this.navParams.get("staffdirectory");
            if (!staffdirectory) staffdirectory = this.navParams.get("staffDirectory");

            
            this.apiSvc.getStaffDirectory(staffdirectory)
                .then(data => {
                    this.staffdirectory = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.staffdirectory.s && this.staffdirectory.s.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getStaffDirectory(); }

    updateStaffDirectory(theStaffDirectoryToUpdate) {
            

        this.apiSvc.updateStaffDirectory(theStaffDirectoryToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getStaffDirectory();
                        this.editMode = false;
                    });
            });
            
    }


    deleteStaffDirectory() {
        

        this.apiSvc.deleteStaffDirectory(this.staffdirectory)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

