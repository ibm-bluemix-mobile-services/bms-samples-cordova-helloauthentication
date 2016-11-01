# HelloAuthentication Cordova application for Bluemix Mobile services

The HelloAuthentication sample contains a Cordova project that you can use to learn and test Facebook Authentication.

### Downloading the sample

Clone the sample with the following command:

	git clone https://github.com/ibm-bluemix-mobile-services/bms-samples-cordova-helloauthentication

### Configure the mobile backend for your HelloAuthentication application

Before you can run the HelloAuthentication application, you must set up an app on Bluemix. The following procedure shows you how to create a MobileFirst Services Starter application. A Node.js runtime environment is created so that you can provide server-side functions, such as resource URIs and static files. The Cloudant® NoSQL DB, Push Notifications, and Mobile Client Access services are then added to the app.

Create a mobile backend in the Bluemix dashboard:

1. In the **Boilerplates** section of the Bluemix catalog, click **MobileFirst Services Starter**.
2. Enter a name and host for your mobile backend and click **Create**.
3. Click **Finish**.

Configure the Mobile Client Access service:

1. In the Mobile Client Access dashboard, go to the **Manage** tab.
2. Click the **Configure** button in the Facebook tile
3. Enter the required configuration settings (App ID for Facebook authentication).

> **Note:** If you have not previously created a Facebook mobile application, follow the instructions on how to [Register and Configure an App](https://developers.facebook.com/docs/apps/register#create-app).

### Add the native platforms to your app

Navigate into your project directory and run the following commands:

```Bash
cordova platform add ios
cordova platform add android
```

Add the plugin:

```Bash
cordova plugin add bms-core
```

### Configure the front end in the HelloAuthentication sample

1. Navigate to the directory where the project was cloned.
2. Open <b>index.js</b> located at [your-directory]/www/js/index.js
3. Replace the `"SERVER_URL"` and set your region.
4. Make sure your route is using **https**.

JavaScript:

```Javascript
// Bluemix credentials
//
// Create a MobileFirst Services starter service instance and copy the route e.g. "https://myhostname.mybluemix.net"
route: "SERVER_URL",
```

```Javascript
// deviceready Event Handler
//
// Set the region: BMSClient.REGION_US_SOUTH, BMSClient.REGION_UK, or BMSClient.REGION_SYDNEY
onDeviceReady: function() {
		BMSClient.initialize(BMSClient.REGION_US_SOUTH);
},
```
> **Note:** Don't forget commas at the end of each line!

### Build the Cordova App

Now you can run your application in your mobile emulator or on your device.

Build the Cordova app. From your terminal enter the following command:

		cordova build ios
		cordova build android


### Make Native Changes

In order to configure Cordova applications for Facebook authentication integration you will need to make changes in native code of the Cordova application, i.e. Java, Objective-C, Swift. Each platform needs to be configured separately. Use vendor provided development environment to make changes in native code, i.e. Android Studio and Xcode. Follow the directions in the official Bluemix documentation to set up Facebook Authentication for Cordova.

[Enabling Facebook authentication in Cordova apps](https://new-console.ng.bluemix.net/docs/services/mobileaccess/facebook-auth-cordova.html).


### Run the Cordova App

Run the sample app from Android Studio or Xcode after making the native changes.

When you run the application, you will see a single view application with a **Ping Bluemix** button. When you click this button the application tests a connection from the client to a protected resource in the backend Bluemix application. Because this is a protected resource, the authentication process will begin. Login to the authentication service (Facebook in this example).  The application will then display if the connection was successful or unsuccessful. In the unsuccessful state, an error is displayed in the application and the output to the Xcode console.

> **Note:** A GET request is made to a protected resource in the Node.js runtime on Bluemix. This code has been provided in the MobileFirst Services Starter boilerplate. The Node.js code provided in this boilerplate must be present in order for the sample to work as expected.

> **iOS Note:** This application runs on the latest version of XCode (V7.0). You might need to modify the application for Application Transport Security (ATS) changes made in iOS 9. For more information, see the following blog entry: [Connect Your iOS 9 App to Bluemix](https://developer.ibm.com/bluemix/2015/09/16/connect-your-ios-9-app-to-bluemix/).

### Resolve any problems

Check the following items:

- Verify that you correctly pasted the route value without the slash at the end.
- Verify that you used the correct Facebook credentials.
- Check the Xcode or Android debug log for more information.
- Check the status of your App in Bluemix.

### License

This package contains sample code provided in source code form. The samples are licensed under the under the Apache License, Version 2.0 (the "License"). You may obtain a copy of the License at http://www.apache.org/licenses/LICENSE-2.0 and may also view the license in the license.txt file within this package. Also see the notices.txt file within this package for additional notices.
