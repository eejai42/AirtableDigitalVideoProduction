import { Injectable } from '@angular/core';
import { Http } from '@angular/http';
import 'rxjs/add/operator/map';

/*
  Generated class for the RestAPISErvice provider.

  See https://angular.io/docs/ts/latest/guide/dependency-injection.html
  for more info on providers and Angular 2 DI.
*/
@Injectable()
export class RestAPIService {

    apiUrl = 'http://localhost:64110/api';


    constructor(public http: Http) {
      console.log('Hello RestAPIService Provider');
    }

    
      
      
      
      
      
    public staffDirectories: any[];
    getStaffDirectories() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/StaffDirectories?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.staffDirectories = data;
                    resolve(this.staffDirectories);
                });
        });
    }

    public staffDirectory: any[];
    getStaffDirectory(staffDirectory: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/StaffDirectories?expand=all&staffDirectoryId=' + staffDirectory.StaffDirectoryId)
                .map(res => res.json())
                .subscribe(data => {
                    this.staffDirectory = data;
                    resolve(this.staffDirectory);
                });
        });
    }

    
    updateStaffDirectory(staffDirectory: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/StaffDirectories', staffDirectory)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewStaffDirectory(staffDirectory: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/StaffDirectories', staffDirectory)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteStaffDirectory(staffDirectory: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/StaffDirectories?staffDirectoryId=' + staffDirectory.StaffDirectoryId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public locations: any[];
    getLocations() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Locations?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.locations = data;
                    resolve(this.locations);
                });
        });
    }

    public location: any[];
    getLocation(location: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Locations?expand=all&locationId=' + location.LocationId)
                .map(res => res.json())
                .subscribe(data => {
                    this.location = data;
                    resolve(this.location);
                });
        });
    }

    
    updateLocation(location: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Locations', location)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewLocation(location: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Locations', location)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteLocation(location: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Locations?locationId=' + location.LocationId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public shots: any[];
    getShots() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Shots?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.shots = data;
                    resolve(this.shots);
                });
        });
    }

    public shot: any[];
    getShot(shot: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Shots?expand=all&shotId=' + shot.ShotId)
                .map(res => res.json())
                .subscribe(data => {
                    this.shot = data;
                    resolve(this.shot);
                });
        });
    }

    
    updateShot(shot: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Shots', shot)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewShot(shot: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Shots', shot)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteShot(shot: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Shots?shotId=' + shot.ShotId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public videos: any[];
    getVideos() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Videos?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.videos = data;
                    resolve(this.videos);
                });
        });
    }

    public video: any[];
    getVideo(video: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Videos?expand=all&videoId=' + video.VideoId)
                .map(res => res.json())
                .subscribe(data => {
                    this.video = data;
                    resolve(this.video);
                });
        });
    }

    
    updateVideo(video: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Videos', video)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewVideo(video: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Videos', video)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteVideo(video: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Videos?videoId=' + video.VideoId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public agencyContacts: any[];
    getAgencyContacts() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/AgencyContacts?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.agencyContacts = data;
                    resolve(this.agencyContacts);
                });
        });
    }

    public agencyContact: any[];
    getAgencyContact(agencyContact: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/AgencyContacts?expand=all&agencyContactId=' + agencyContact.AgencyContactId)
                .map(res => res.json())
                .subscribe(data => {
                    this.agencyContact = data;
                    resolve(this.agencyContact);
                });
        });
    }

    
    updateAgencyContact(agencyContact: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/AgencyContacts', agencyContact)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewAgencyContact(agencyContact: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/AgencyContacts', agencyContact)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteAgencyContact(agencyContact: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/AgencyContacts?agencyContactId=' + agencyContact.AgencyContactId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public scenes: any[];
    getScenes() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Scenes?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.scenes = data;
                    resolve(this.scenes);
                });
        });
    }

    public scene: any[];
    getScene(scene: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Scenes?expand=all&sceneId=' + scene.SceneId)
                .map(res => res.json())
                .subscribe(data => {
                    this.scene = data;
                    resolve(this.scene);
                });
        });
    }

    
    updateScene(scene: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Scenes', scene)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewScene(scene: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Scenes', scene)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteScene(scene: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Scenes?sceneId=' + scene.SceneId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public inventoryItems: any[];
    getInventoryItems() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/InventoryItems?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.inventoryItems = data;
                    resolve(this.inventoryItems);
                });
        });
    }

    public inventoryItem: any[];
    getInventoryItem(inventoryItem: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/InventoryItems?expand=all&inventoryItemId=' + inventoryItem.InventoryItemId)
                .map(res => res.json())
                .subscribe(data => {
                    this.inventoryItem = data;
                    resolve(this.inventoryItem);
                });
        });
    }

    
    updateInventoryItem(inventoryItem: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/InventoryItems', inventoryItem)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewInventoryItem(inventoryItem: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/InventoryItems', inventoryItem)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteInventoryItem(inventoryItem: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/InventoryItems?inventoryItemId=' + inventoryItem.InventoryItemId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    
      
      
      
      
      
    public agencies: any[];
    getAgencies() {

        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Agencies?expand=all')
                .map(res => res.json())
                .subscribe(data => {
                    this.agencies = data;
                    resolve(this.agencies);
                });
        });
    }

    public agency: any[];
    getAgency(agency: any) {
        return new Promise(resolve => {
            this.http.get(this.apiUrl + '/Agencies?expand=all&agencyId=' + agency.AgencyId)
                .map(res => res.json())
                .subscribe(data => {
                    this.agency = data;
                    resolve(this.agency);
                });
        });
    }

    
    updateAgency(agency: any) {
         return new Promise(resolve => {
            this.http.put(this.apiUrl + '/Agencies', agency)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    addNewAgency(agency: any) {
         return new Promise(resolve => {
            this.http.post(this.apiUrl + '/Agencies', agency)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }

    deleteAgency(agency: any) {
         return new Promise(resolve => {
            this.http.delete(this.apiUrl + '/Agencies?agencyId=' + agency.AgencyId)
                .map(res => res.json())
                .subscribe(data => {
                    resolve(data);
                });
        });
    }
    


}

