# HelloAuthentication Cordova application for IBM MobileFirst Services on IBM Bluemix

The HelloWorld sample contains a Cordova project that you can use to learn.

### Create your mobile backend in Bluemix

1. In the Boilerplates section of the Bluemix catalog, click MobileFirst Services Starter.
2. Enter a name and host for your app and click Create.
3. Click Finish. 

### Downloading the sample

Clone the samples with the following command:
	
	git clone https://github.com/ibm-bluemix-mobile-services/bms-samples-cordova-helloauthentication
	
### Configure the mobile backend for your helloAuthentication application
Before you can run the helloAuthentication application, you must set up an app on Bluemix.  The following procedure shows you how to create a MobileFirst Services Starter application. A Node.js runtime environment is created so that you can provide server-side functions, such as resource URIs and static files. The Cloudant® NoSQL DB, IBM Push Notifications, and Mobile Client Access services are then added to the app.

Create a mobile backend in the Bluemix dashboard:

1.	In the **Boilerplates** section of the Bluemix catalog, click **MobileFirst Services Starter**.
2.	Enter a name and host for your mobile backend and click **Create**.
3.	Click **Finish**.

Configure the Mobile Client Access service:

1.	In the Mobile Client Access dashboard, go to the **Authentication** tab to configure your authentication service.  
2.  Choose your authentication type (this sample has been configured for Facebook authentication).
3.  Enter the required configuration settings (APP ID for Facebook authentication).

**Note:** If you have not previously created a Facebook mobile application, follow the instructions on how to [Register and Configure an App](https://developers.facebook.com/docs/apps/register#create-app).
	
### Configure Cordova

Follow the README instructions for "Installation" and "Configuration" here to add the cordova platforms and plugins, and configure your development environment:

<https://github.com/ibm-bluemix-mobile-services/bms-clientsdk-cordova-plugin-core/#installation>

***Note: Project will not build until you follow instructions from this step***

For this sample you will need the **ibm-mfp-core** plugin.

	cordova plugin add ibm-mfp-core
	
### Setting up Facebook authentication

For iOS, follow the instructions here to configure Xcode project for Facebook authentication:

<https://developers.facebook.com/docs/ios/getting-started>

Make sure you use the correct AppID for your Facebook app.

### Configure the front end in the HelloAuthentication sample

1. Navigate to the directory where the project was cloned.
2. Open <b>index.js</b> located at [your-directory]/www/js/index.js
3. Replace the \<APPLICATION_ROUTE\> and \<APPLICATION_GUID\> with your Bluemix application ID and route.

Javascript:
	
	// Bluemix credentials
	route: "<APPLICATION_ROUTE>",
	guid: "<APPLICATION_GUID>",	

***Note: Don't forget commas at the end of each line!***

### Build/Run the Cordova App

Now you can run your application in your mobile emulator or on your device.

1. Build the Cordova app. From your terminal enter the following command:

		cordova build ios
		cordova build android

2. Run the sample app. From your terminal enter the following command:

		cordova run ios
		cordova run android		

When you run the application, you will see a single view application with a **PING BLUEMIX** button. When you click this button the application tests a connection from the client to a protected resource in the backend Bluemix application. Because this is a protected resource, the authentication process will begin. Login to the authentication service (Facebook in this example).  The application will then display if the connection was successful or unsuccessful. In the unsuccessful state, an error is displayed in the application and the output to the Xcode console.

**Note:** A GET request is made to a protected resource in the Node.js runtime on Bluemix. This code has been provided in the MobileFirst Services Starter boilerplate. The Node.js code provided in this boilerplate must be present in order for the sample to work as expected.

**iOS Note:** This application runs on the latest version of XCode (V7.0). You might need to modify the application for Application Transport Security (ATS) changes made in iOS 9. For more information, see the following blog entry: [Connect Your iOS 9 App to Bluemix](https://developer.ibm.com/bluemix/2015/09/16/connect-your-ios-9-app-to-bluemix/).

### Resolve any problems

Check the following items:

- Verify that you correctly pasted the route and GUID values.
- Verify that you used the correct Facebook credentials.
- Check the Xcode or Android debug log for more information.
- Check the status of your App in Bluemix.

### License

This package contains sample code provided in source code form. The samples are licensed under the under the Apache License, Version 2.0 (the "License"). You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 and may also view the license in the license.txt file within this package. Also see the notices.txt file within this package for additional notices.
