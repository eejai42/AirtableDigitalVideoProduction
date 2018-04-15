import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { IonicBase } from '../../../app/ionic-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class LocationBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.location = this.navParams.get('location') || this.location;
        this.getLocation();
        this.editMode = this.navParams.get("editMode");
    }
    
    public LocationState = siteMap['Location'];

    public pages : any;

    

    public ScenesState = siteMap['Scenes'];
    public parent : any;

    
    public location: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getLocation() {
        return new Promise(resolve => {
            let location = this.navParams.get("location");
            if (!location) location = this.navParams.get("location");

            
            this.apiSvc.getLocation(location)
                .then(data => {
                    this.location = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.location.Scenes && this.location.Scenes.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getLocation(); }

    updateLocation(theLocationToUpdate) {
            

        this.apiSvc.updateLocation(theLocationToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getLocation();
                        this.editMode = false;
                    });
            });
            
    }


    deleteLocation() {
        

        this.apiSvc.deleteLocation(this.location)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, location = {}, editMode = false) : Promise<any> {
        return this.goToState(state, location, editMode, true);
    }

    goToState(state, location = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { location : location, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { location : location, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

