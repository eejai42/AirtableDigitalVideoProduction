//
// ===== File globals.ts    
//

    
        import { Home } from '../pages/home/home';
    

    
        import { Locations } from '../pages/locations/locations';
    

    
        import { Location } from '../pages/locations/location/location';
    

    
        import { Scenes } from '../pages/locations/location/scenes/scenes';
    

    
        import { Scene } from '../pages/locations/location/scenes/scene/scene';
    

    
        import { Shots } from '../pages/locations/location/scenes/scene/shots/shots';
    

    
        import { Shot } from '../pages/locations/location/scenes/scene/shots/shot/shot';
    

    
        import { InventoryItems } from '../pages/locations/location/scenes/scene/inventoryitems/inventoryitems';
    

    
        import { InventoryItem } from '../pages/locations/location/scenes/scene/inventoryitems/inventoryitem/inventoryitem';
    

    
        import { StaffDirectories } from '../pages/locations/location/scenes/scene/inventoryitems/inventoryitem/staffdirectories/staffdirectories';
    

    
        import { StaffDirectory } from '../pages/locations/location/scenes/scene/inventoryitems/inventoryitem/staffdirectories/staffdirectory/staffdirectory';
    

    
        import { Videos } from '../pages/locations/location/scenes/scene/inventoryitems/inventoryitem/staffdirectories/staffdirectory/videos/videos';
    

    
        import { Agencies } from '../pages/agencies/agencies';
    

    
        import { Agency } from '../pages/agencies/agency/agency';
    

    
        import { AgencyContacts } from '../pages/agencies/agency/agencycontacts/agencycontacts';
    

    
        import { AgencyContact } from '../pages/agencies/agency/agencycontacts/agencycontact/agencycontact';
    

    
        import { About } from '../pages/about/about';
    

    
        import { Contact } from '../pages/contact/contact';
    

    
        import { Chat } from '../pages/contact/chat/chat';
    

    
        import { Email } from '../pages/contact/email/email';
    

    
        import { Call } from '../pages/contact/call/call';
    


export const components : any[] = [Home, Locations, Location, Scenes, Scene, Shots, Shot, InventoryItems, InventoryItem, StaffDirectories, StaffDirectory, Videos, Agencies, Agency, AgencyContacts, AgencyContact, About, Contact, Chat, Email, Call];

export const siteMap: { [name: string]: { name: string, title: string, component: any, parentComponent: any, subComponents: any[]; } } = {};

                            siteMap['Home'] = { name: 'Home', title: 'Home', component: Home, parentComponent: null, subComponents: [] };
                        
                            siteMap['Locations'] = { name: 'Locations', title: 'Locations', component: Locations, parentComponent: null, subComponents: [] };
                        
                            siteMap['Location'] = { name: 'Location', title: 'Location', component: Location, parentComponent: null, subComponents: [] };
                        
                            siteMap['Scenes'] = { name: 'Scenes', title: 'Scenes', component: Scenes, parentComponent: null, subComponents: [] };
                        
                            siteMap['Scene'] = { name: 'Scene', title: 'Scene', component: Scene, parentComponent: null, subComponents: [] };
                        
                            siteMap['Shots'] = { name: 'Shots', title: 'Shots', component: Shots, parentComponent: null, subComponents: [] };
                        
                            siteMap['Shot'] = { name: 'Shot', title: 'Shot', component: Shot, parentComponent: null, subComponents: [] };
                        
                            siteMap['InventoryItems'] = { name: 'InventoryItems', title: 'InventoryItems', component: InventoryItems, parentComponent: null, subComponents: [] };
                        
                            siteMap['InventoryItem'] = { name: 'InventoryItem', title: 'InventoryItem', component: InventoryItem, parentComponent: null, subComponents: [] };
                        
                            siteMap['StaffDirectories'] = { name: 'StaffDirectories', title: 'StaffDirectories', component: StaffDirectories, parentComponent: null, subComponents: [] };
                        
                            siteMap['StaffDirectory'] = { name: 'StaffDirectory', title: 'StaffDirectory', component: StaffDirectory, parentComponent: null, subComponents: [] };
                        
                            siteMap['Videos'] = { name: 'Videos', title: 'Videos', component: Videos, parentComponent: null, subComponents: [] };
                        
                            siteMap['Agencies'] = { name: 'Agencies', title: 'Agencies', component: Agencies, parentComponent: null, subComponents: [] };
                        
                            siteMap['Agency'] = { name: 'Agency', title: 'Agency', component: Agency, parentComponent: null, subComponents: [] };
                        
                            siteMap['AgencyContacts'] = { name: 'AgencyContacts', title: 'AgencyContacts', component: AgencyContacts, parentComponent: null, subComponents: [] };
                        
                            siteMap['AgencyContact'] = { name: 'AgencyContact', title: 'AgencyContact', component: AgencyContact, parentComponent: null, subComponents: [] };
                        
                            siteMap['About'] = { name: 'About', title: 'About', component: About, parentComponent: null, subComponents: [] };
                        
                            siteMap['Contact'] = { name: 'Contact', title: 'Contact', component: Contact, parentComponent: null, subComponents: [] };
                        
                            siteMap['Chat'] = { name: 'Chat', title: 'Chat', component: Chat, parentComponent: null, subComponents: [] };
                        
                            siteMap['Email'] = { name: 'Email', title: 'Email', component: Email, parentComponent: null, subComponents: [] };
                        
                            siteMap['Call'] = { name: 'Call', title: 'Call', component: Call, parentComponent: null, subComponents: [] };
                        


                                siteMap['Locations'].subComponents.push(siteMap['Location']);
                            
                                siteMap['Location'].parentComponent = siteMap['Locations'];
                            
                                siteMap['Location'].subComponents.push(siteMap['Scenes']);
                            
                                siteMap['Scenes'].parentComponent = siteMap['Location'];
                            
                                siteMap['Scenes'].subComponents.push(siteMap['Scene']);
                            
                                siteMap['Scene'].parentComponent = siteMap['Scenes'];
                            
                                siteMap['Scene'].subComponents.push(siteMap['Shots']);
                            
                                siteMap['Scene'].subComponents.push(siteMap['InventoryItems']);
                            
                                siteMap['Shots'].parentComponent = siteMap['Scene'];
                            
                                siteMap['Shots'].subComponents.push(siteMap['Shot']);
                            
                                siteMap['Shot'].parentComponent = siteMap['Shots'];
                            
                                siteMap['InventoryItems'].parentComponent = siteMap['Scene'];
                            
                                siteMap['InventoryItems'].subComponents.push(siteMap['InventoryItem']);
                            
                                siteMap['InventoryItem'].parentComponent = siteMap['InventoryItems'];
                            
                                siteMap['InventoryItem'].subComponents.push(siteMap['StaffDirectories']);
                            
                                siteMap['StaffDirectories'].parentComponent = siteMap['InventoryItem'];
                            
                                siteMap['StaffDirectories'].subComponents.push(siteMap['StaffDirectory']);
                            
                                siteMap['StaffDirectory'].parentComponent = siteMap['StaffDirectories'];
                            
                                siteMap['StaffDirectory'].subComponents.push(siteMap['Videos']);
                            
                                siteMap['Videos'].parentComponent = siteMap['StaffDirectory'];
                            
                                siteMap['Agencies'].subComponents.push(siteMap['Agency']);
                            
                                siteMap['Agency'].parentComponent = siteMap['Agencies'];
                            
                                siteMap['Agency'].subComponents.push(siteMap['AgencyContacts']);
                            
                                siteMap['AgencyContacts'].parentComponent = siteMap['Agency'];
                            
                                siteMap['AgencyContacts'].subComponents.push(siteMap['AgencyContact']);
                            
                                siteMap['AgencyContact'].parentComponent = siteMap['AgencyContacts'];
                            
                                siteMap['Contact'].subComponents.push(siteMap['Chat']);
                            
                                siteMap['Contact'].subComponents.push(siteMap['Email']);
                            
                                siteMap['Contact'].subComponents.push(siteMap['Call']);
                            
                                siteMap['Chat'].parentComponent = siteMap['Contact'];
                            
                                siteMap['Email'].parentComponent = siteMap['Contact'];
                            
                                siteMap['Call'].parentComponent = siteMap['Contact'];
                            

export const pages : any[] = [

        siteMap['Home']
    , 
        siteMap['Locations']
    , 
        siteMap['Agencies']
    , 
        siteMap['About']
    , 
        siteMap['Contact']
    
];

