import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { IonicBase } from '../../app/ionic-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class AgenciesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getAgencies();
        
    }
    
    public AgenciesState = siteMap['Agencies'];

    public pages : any;

    

    public AgencyState = siteMap['Agency'];
    public parent : any;
    public agencies: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getAgencies() {
        return new Promise(resolve => {
            
            this.apiSvc.getAgencies()
                .then(result => { 
                    this.agencies = result;
                    resolve(result);
                });
        });
    }

    reload() { return this.getAgencies(); }

    addNewAgency() { // 
        var newAgency = {
            "Name" : "New Agency " + (this.agencies ? this.agencies.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewAgency(newAgency)
            .then(data => {
                
                this.getAgencies();
                this.goToState(this.AgencyState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, agency = {}, editMode = false) : Promise<any> {
        return this.goToState(state, agency, editMode, true);
    }

    goToState(state, agency = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { agency : agency, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { agency : agency, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

