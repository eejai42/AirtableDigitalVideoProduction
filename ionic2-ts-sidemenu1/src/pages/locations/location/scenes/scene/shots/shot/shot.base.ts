import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class ShotBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.shot = this.navParams.get('shot') || this.shot;
        this.getShot();
        this.editMode = this.navParams.get("editMode");
    }
    
    public ShotState = siteMap['Shot'];

    public pages : any;

    public parent : any;

    
    public shot: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getShot() {
        return new Promise(resolve => {
            let shot = this.navParams.get("shot");
            if (!shot) shot = this.navParams.get("shot");

            
            this.apiSvc.getShot(shot)
                .then(data => {
                    this.shot = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getShot(); }

    updateShot(theShotToUpdate) {
            

        this.apiSvc.updateShot(theShotToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getShot();
                        this.editMode = false;
                    });
            });
            
    }


    deleteShot() {
        

        this.apiSvc.deleteShot(this.shot)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
            });
            
    }

    
    goToRootState(state, shot = {}, editMode = false) : Promise<any> {
        return this.goToState(state, shot, editMode, true);
    }

    goToState(state, shot = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { shot : shot, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { shot : shot, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

