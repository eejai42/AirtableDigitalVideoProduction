import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../app/app.modules-base';
import { RestAPIService } from '../../providers/rest-api-service';
import { LocationsBase } from './locations.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-locations',
    templateUrl: 'locations.html'
})
export class Locations extends LocationsBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

