import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../app/app.modules-base';
import { IonicBase } from '../../../app/ionic-base';
import { RestAPIService } from '../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class AgencyBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.agency = this.navParams.get('agency') || this.agency;
        this.getAgency();
        this.editMode = this.navParams.get("editMode");
    }
    
    public AgencyState = siteMap['Agency'];

    public pages : any;

    

    public AgencyContactsState = siteMap['AgencyContacts'];
    public parent : any;

    
    public agency: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getAgency() {
        return new Promise(resolve => {
            let agency = this.navParams.get("agency");
            if (!agency) agency = this.navParams.get("agency");

            
            this.apiSvc.getAgency(agency)
                .then(data => {
                    this.agency = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.agency.AgencyContacts && this.agency.AgencyContacts.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getAgency(); }

    updateAgency(theAgencyToUpdate) {
            

        this.apiSvc.updateAgency(theAgencyToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getAgency();
                        this.editMode = false;
                    });
            });
            
    }


    deleteAgency() {
        

        this.apiSvc.deleteAgency(this.agency)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

