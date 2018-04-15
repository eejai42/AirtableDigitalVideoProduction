import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { IonicBase } from '../../../../../app/ionic-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { Observable } from 'rxjs/Observable';
import { Subject } from "rxjs/Subject";
import { Storage } from '@ionic/storage';

export class SceneBase extends IonicBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super()
        this.parent = this.navParams.get("parent");
        this.pages = siteMap;
        
        this.scene = this.navParams.get('scene') || this.scene;
        this.getScene();
        this.editMode = this.navParams.get("editMode");
    }
    
    public SceneState = siteMap['Scene'];

    public pages : any;

    

    public ShotsState = siteMap['Shots'];
    

    public InventoryItemsState = siteMap['InventoryItems'];
    public parent : any;

    
    public scene: any = {};
    ;
    public canDelete: any = true;
    public editMode = false;

    pop() {
        this.navCtrl.pop();
    }

    getScene() {
        return new Promise(resolve => {
            let scene = this.navParams.get("scene");
            if (!scene) scene = this.navParams.get("scene");

            
            this.apiSvc.getScene(scene)
                .then(data => {
                    this.scene = data;
                    this.canDelete = true;

                    // Check if they can actually delete
                    
                    
                    if (this.scene.Shots && this.scene.Shots.length > 0) {
                        this.canDelete = false;
                    }
                    
                    
                    if (this.scene.InventoryItems && this.scene.InventoryItems.length > 0) {
                        this.canDelete = false;
                    }
                    

                    resolve(data);
                });
            
        });
    }
    
    reload() { return this.getScene(); }

    updateScene(theSceneToUpdate) {
            

        this.apiSvc.updateScene(theSceneToUpdate)
            .then(data => {
                 
                this.parent
                    .reload()
                    .then(parentResult => {
                        this.getScene();
                        this.editMode = false;
                    });
            });
            
    }


    deleteScene() {
        

        this.apiSvc.deleteScene(this.scene)
            .then(data => {
                this.parent
                    .reload()
                    .then(parentResult => {
                         this.navCtrl.pop();
                    });
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

