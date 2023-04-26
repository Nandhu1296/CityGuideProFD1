# CityGuideProFD1
forproject defense version 1


Server:
	Database:
		1. In MSSQL format. you can use sqlizer.com to extract the file and convert them to different formats.
		2. It is 5 dollars costlier than MySQL per month. But the responsiveness is higher when moving from one.
beacon to their another as it downloads the floor plans again and again.  
		3. The cloud DB and The local DB has been connected to the AZURE data studio in LAB MAC system. The local can be used as DEV/TEST system and can be worked on that. 
		4. The cloud DB will be mentioned as “TCP:….”, and it will be tread as a production.
		5. The Local DB is Dockerized to fit into Mac environment. 
        Backend application for API:
		1. It is in NodeJs and HTML. ProcFile is needed to upload for cloud server and initialize the application. 
		2. DB connection for MySQL also has been created and named as “conn with mysql.txt”. The credentials for heroku and Azure has been provided above. If there is a connection issue, you just want rot go into the heroic account and open account settings. There your DB and application details will be provided. Just copy paste them directly to your Azure or any studio as per your need. 
		3. The website cityguide.heroku.com is directly connected to the PROD DB. So it also can be used if we need to add  or modify beacons and groups. You can also use the Azure studio. 
		4. The Authenticator app will be in the lab iPhone which is also needed to open the cloud heroic application . It is a two factor authentication for the account access.  
		5. Steps to upload the backend app and DB to the cloud are, 
https://blog.back4app.com/heroku-deploy-nodejs-app/. 
https://devcenter.heroku.com/articles/deploying-nodejs

Also , if you wanna create or deploy as new application 
You need to use 
Heroku create - command - this will create a new git profile. 
Everything first needs to uploaded to heroku’s git and then will be automatically deployed from there to server using CICD method. You can also use your GIT profile if needed. Any changes that were directly changed from your VScode to reflect on cloud directly. 
1. use GIT 

git add .
$ git commit -m "Added a Procfile."
$ heroku login
You need to enter heroic login credentials if prompted. It was given above. 

Heroic create - if you are creating a new profile. 

Else 

git push heroku main - command 
heroku ps:scale web=1 - command to check the instance

Before trying to upload, please neglect the NPM package files as they will be prebuilt and prepopulated for all applications. You will need only when working locally. 
Also, try flushing out the previous instances and jobs using the commands npm flush , npm install and   npm inspect. 



It is is uploading the API and DB only and not the mobile app. 
The mobile will be moved to App Store later and can be downloaded by anyone. For now you need to run it from your lab system or any Mac system. 

        Mobile application:
		With the past application that was created by Taha, the recent additions were
1. Exits view controller - class - to sort down the entrances and exits of the building you are in. 
2. The application has been turned into MVC pattern so that , you just want to access the main pages and its files for Contacts, settings and HomeScreen. IF you wanna go deeper, then you can use the support files where the function calls are being called and the instructions are generated. 
3. Rating control - class - for the users to provide feedback on the application.
4. Database - you can change the PROD and PROD and DB connection. 
5. EnterContact VC1, 2, 3 - classes - they were previous contacts pages, where the contact name and contact phone number will be stored and will be accessed via buttons in contact screen. Inprogress- I am trying to store lot of contacts and have 2 buttons to delete and default the option. This one was unable to be completed now. 
6. Profile VC - class - I have created this as a new class, because in the future if we are creating this application for each profile.users and if we wanna store their credentials, to the DB. This profile settings can be used to find them uniquely. 
7. Custom pop up view controller - just a pop view like alert - it was created as a template that will be shared throughout the application. 
8. FirstscreenVC - class - new class to get the user category of the person and store it at the beginning of the application itself. 
9. Call 911 - func - call 
10. Call specific person - call function
11. Share location - to share location with all users or user in specific. 
12. Send email - to store and edit the feedback of the user with his nearest beacon . 
13. Firstopen()- function - to open the initial screen for user category.
