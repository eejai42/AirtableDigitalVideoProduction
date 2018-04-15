import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { IonicBase } from '../../app/ionic-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class LocationsBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getLocations();
        
    }
    
    public LocationsState = siteMap['Locations'];

    public pages : any;

    

    public LocationState = siteMap['Location'];
    public parent : any;
    public locations: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getLocations() {
        return new Promise(resolve => {
            
            this.apiSvc.getLocations()
                .then(result => { 
                    this.locations = result;
                    resolve(result);
                });
        });
    }

    reload() { return this.getLocations(); }

    addNewLocation() { // 
        var newLocation = {
            "Name" : "New Location " + (this.locations ? this.locations.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewLocation(newLocation)
            .then(data => {
                
                this.getLocations();
                this.goToState(this.LocationState, data, true);
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

