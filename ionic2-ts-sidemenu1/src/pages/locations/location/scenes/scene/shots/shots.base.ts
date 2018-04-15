import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class ShotsBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getShots();
        
    }
    
    public ShotsState = siteMap['Shots'];

    public pages : any;

    

    public ShotState = siteMap['Shot'];
    public parent : any;
    public shots: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getShots() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.shots = result.Shots;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getShots(); }

    addNewShot() { // 
        var newShot = {
        
            Scene
             : this.parent.scene.SceneId,
            "Name" : "New Shot " + (this.shots ? this.shots.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewShot(newShot)
            .then(data => {
                
                this.parent.reload();
                this.getShots();
                this.goToState(this.ShotState, data, true);
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

