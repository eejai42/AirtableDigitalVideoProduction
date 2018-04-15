import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../app/app.modules-base';
import { RestAPIService } from '../../../../../../../providers/rest-api-service';
import { ShotBase } from './shot.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-shot',
    templateUrl: 'shot.html'
})
export class Shot extends ShotBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

