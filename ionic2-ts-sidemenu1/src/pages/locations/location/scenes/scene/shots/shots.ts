import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../app/app.modules-base';
import { RestAPIService } from '../../../../../../providers/rest-api-service';
import { ShotsBase } from './shots.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-shots',
    templateUrl: 'shots.html'
})
export class Shots extends ShotsBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

