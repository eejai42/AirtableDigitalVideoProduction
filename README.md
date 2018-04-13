# ssotme-ms-airtable-ionic-sassymq-seed
An Ionic Sassy Seed based on an Airtable.com base.

#### Full Roadmap
For a full project roadmap, including: [Roadmap Airtable Template](https://airtable.com/shriiZMSnMwtOUKY3)

 - Roadmap - Project Phases/Budget
 - User Stories
 - Actors
 - Lexicon - API
 - Entities - things
 - App States
 - Settings

Or, for an empty starting project, use this: [Empty Airtable Template](https://airtable.com/shrGgWOuXXxhZls1c)

#### Other Start Templates:
- [Simple Company Template](https://airtable.com/shr12ryYJilZGEZuj)
- [Piano Service Template](https://airtable.com/shrUU5nLreXumAQHK)
- [Simple Task Manager](https://airtable.com/shrLrXduwAKlsI3bS)
- [Party Games Template](https://airtable.com/shrpcXNi5Iq2mh1mN)
- [Homework Plus Template](https://airtable.com/shrOxjT36OAKciofE)

# Using this Seed:

### Create an Airtable Base

Airtable.com is *by far* the best tool I've ever found for describing a single source of truth. 
It has all the flexibility of a Spreadsheet + the formal structure of a Database.

There are a list of starter templates above.  You can either pick one of the example templates
above, or start with an Empty template and build your own.  

1. Copy an Airtable Template above

   * Open one of the airtables above and Click *copy base* in the top right corner to create a 
copy in your own Airtable.com account.

4. Customize the Airtable

   * Just follow the patterns established.  Add as many sheets of data as you want, and simply list 
each sheet on the "Entities" tab.  That's the only "rule".

4. Generate an API key on your account

   * If you have not already created an API Key - this is how to do it.
   * Close the airtable to get to the Airtable.com home page.
   * Click on your account icon in the top right corner of the screen and choose "Account"
   * Scroll down and click "Generate Key" to create an API key

5. Copy BaseID and APIKey

   * Open the API Documentation and choose *show API key* in the top right corner.  Copy your 
airtable base id and api key from the documentation.
   - https://api.airtable.com/v0/{THIS_IS_THE_BASE_ID}/Roadmap?api_key={THIS_IS_YOUR_API_KEY}
   - The `baseId` will start *app*XYZ123 and the `apiKey` will start out *key*XYZ123.

### Fork and Clone this Repo

1. Fork and Clone this repo

   * Click Fork in the top right corner of Github

2. Rename the copy created in your account.

   * Rename the repo on the settings tab.

3. Clone the repo

   * Clone the repo to a folder on your local computer.

5. Add Base ID and API key from Above.

   * Update the "SSoTmeProject.json" file in the root folder to add your
Base ID and API Key copied above.

6. Make sure you have the latest SSoT.me CLI tools installed.

6. Run the `ssotme -init`

   * Open a powershell prompt in the repo root folder, and type `>ssotme -init`.  
The name of the project will be inferred from the name of the folder.

   - *NOTE* - if the `Base ID` OR `API KEY` is wrong - it will be reported right away in the 
 init process as a 404 error on Airtable.

   - Also - if the `AirtableName` values for any enties included do not match a tab in your Airtable, 
 the SSoT.me CLI will complain and tell you which entity does not match.

8. Download Packages & Build Ionic Mobile App

   * Move into the `/ionic-ts-sidemenu/` folder and type `>prepare-ionic.bat` to 
start the ionic project downloading npm packages and building the mobile app.

1. Create Sql Server DB

     * Run the `/SqlServer/UpdateSchema.sql` to create (or update the schema for) a SQL Server Database.

7. Open Visual Studio
     * Open the Visual Studio Solution (.sln) file that will be in the project root folder.

9. Include additional project files

     - In visual studio open `/Windows/CoreLibrary/SassyMQ/` and include the 3 `.cs` 
files which are not automatically included.

    - In the visual studio project, open `/MVCRestAPI/Controllers/` and include the `api/*Controller.cs` 
rest api controllers which are not automatically included in the project when detected.

### Run the project

11. Make the `MVCRestAPI` the startup project in the solution.

12. Press F5 to run the project.  This will start the REST API.

13. in powershell, run `ionic-ts-sidemenu/>ionic serve` to start the Ionic Mobile app.  

### Et Voila! 

"Spreadsheet" to mobile app in less than 10 minutes.


