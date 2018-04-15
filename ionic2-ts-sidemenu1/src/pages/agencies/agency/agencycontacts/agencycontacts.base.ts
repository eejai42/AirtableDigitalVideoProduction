import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../app/app.modules-base';
import { IonicBase } from '../../../../app/ionic-base';
import { RestAPIService } from '../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class AgencyContactsBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getAgencyContacts();
        
    }
    
    public AgencyContactsState = siteMap['AgencyContacts'];

    public pages : any;

    

    public AgencyContactState = siteMap['AgencyContact'];
    public parent : any;
    public agencyContacts: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getAgencyContacts() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.agencyContacts = result.AgencyContacts;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getAgencyContacts(); }

    addNewAgencyContact() { // 
        var newAgencyContact = {
        
            Agency
             : this.parent.agency.AgencyId,
            "Name" : "New AgencyContact " + (this.agencyContacts ? this.agencyContacts.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewAgencyContact(newAgencyContact)
            .then(data => {
                
                this.parent.reload();
                this.getAgencyContacts();
                this.goToState(this.AgencyContactState, data, true);
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

