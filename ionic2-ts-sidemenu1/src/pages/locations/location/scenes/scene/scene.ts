import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../app/app.modules-base';
import { RestAPIService } from '../../../../../providers/rest-api-service';
import { SceneBase } from './scene.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-scene',
    templateUrl: 'scene.html'
})
export class Scene extends SceneBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

