import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class AgencyContactBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.agencyContact = this.navParams.get('agencycontact') || this.agencyContact;
        this.getAgencyContact();
        this.editMode = this.navParams.get("editMode");
    }
    
    public AgencyContactState = siteMap['AgencyContact'];

    public pages : any;

    public parent : any;

    
    public agencycontact: any = {};
    
    public agencyContact: any = {};
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getAgencyContact() {
        return new Promise(resolve => {
            let agencycontact = this.navParams.get("agencycontact");
            if (!agencycontact) agencycontact = this.navParams.get("agencyContact");

            
            this.apiSvc.getAgencyContact(agencycontact)
                .then(data => {
                    this.agencycontact = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getAgencyContact(); }

    updateAgencyContact(theAgencyContactToUpdate) {
            

        this.apiSvc.updateAgencyContact(theAgencyContactToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getAgencyContact();
                        this.editMode = false;
                    });
            });
            
    }


    deleteAgencyContact() {
        

        this.apiSvc.deleteAgencyContact(this.agencycontact)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, agencyContact = {}, editMode = false) : Promise<any> {
        return this.goToState(state, agencyContact, editMode, true);
    }

    goToState(state, agencyContact = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { agencycontact : agencyContact, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { agencycontact : agencyContact, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

