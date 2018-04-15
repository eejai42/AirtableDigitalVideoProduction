import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../app/app.modules-base';
import { IonicBase } from '../../../../app/ionic-base';
import { RestAPIService } from '../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class ScenesBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        this.getScenes();
        
    }
    
    public ScenesState = siteMap['Scenes'];

    public pages : any;

    

    public SceneState = siteMap['Scene'];
    public parent : any;
    public scenes: any = []; 

    

    pop2() { 
        this.navCtrl.pop()
            .then(data => {
                this.navCtrl.pop();
            });
    }

    getScenes() {
        return new Promise(resolve => {
            
            this.parent.reload()
                .then(result => {
                    this.scenes = result.Scenes;
                    resolve(result);
                })
            
        });
    }

    reload() { return this.getScenes(); }

    addNewScene() { // 
        var newScene = {
        
            Location
             : this.parent.location.LocationId,
            "Name" : "New Scene " + (this.scenes ? this.scenes.length + 1 : 1),
            "Description" : ""
        }
        
        this.apiSvc.addNewScene(newScene)
            .then(data => {
                
                this.parent.reload();
                this.getScenes();
                this.goToState(this.SceneState, data, true);
            });
            
    }
    

    

    
    goToRootState(state, scene = {}, editMode = false) : Promise<any> {
        return this.goToState(state, scene, editMode, true);
    }

    goToState(state, scene = {}, editMode = false, setRoot = false)  : Promise<any> {
        if (setRoot) {
            return this.navCtrl.setRoot(state.component, { scene : scene, parent: this, editMode: editMode });
        } else {
            return this.navCtrl.push(state.component, { scene : scene, parent: this, editMode: editMode });
        }
    }

    goToUrl(url) {
        console.log('SIMULATING OPEN OF URL: ' + url);
    }

    
}

