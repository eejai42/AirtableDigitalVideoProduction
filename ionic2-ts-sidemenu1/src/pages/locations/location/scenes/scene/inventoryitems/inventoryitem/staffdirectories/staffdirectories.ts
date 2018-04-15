import { Component } from '@angular/core';

import { NavController } from 'ionic-angular';
import { NavParams } from 'ionic-angular';
import { siteMap } from '../../../../../../../../app/app.modules-base';
import { RestAPIService } from '../../../../../../../../providers/rest-api-service';
import { StaffDirectoriesBase } from './staffdirectories.base';
import { Storage } from '@ionic/storage';

@Component({
    selector: 'page-staffdirectories',
    templateUrl: 'staffdirectories.html'
})
export class StaffDirectories extends StaffDirectoriesBase {

    constructor(public navCtrl: NavController, public navParams: NavParams, public apiSvc: RestAPIService) {
        super(navCtrl, navParams, apiSvc); 
    }
}

