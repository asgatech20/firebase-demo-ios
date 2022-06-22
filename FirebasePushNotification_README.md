# FirebaseTest

Demo about Push Notification (Sending Push Notifications by Using Firebase Cloud Messaging)
     
# Definition

Push Notifications are messages that can be sent directly to a user's mobile device.
They can appear on a lock screen or in the top section of a mobile device. An app
publisher can only send a push notification if the user has their app installed.

Firebase Push Notifications is a free service that enables user notifications for
Android and iOS devices. Through the Firebase console, you can send notifications
quickly and easily across platforms with no server coding required.

Firebase Cloud Messaging is the tool used to send push notifications to single or
a group of devices.
Firebase Cloud Messaging: Firebase Cloud Messaging (FCM) is a cross-platform
messaging solution that lets you reliably send messages at no cost.

Using FCM, you can notify a client app that new email or other data is available
to sync. You can send notification messages to drive user re-engagement and 
retention. For use cases such as instant messaging, a message can transfer a 
payload of up to 4KB to a client app.
     
## Installation

1- First need to create Certificate:
    a- From your Mac open Keychain Access and perform the following steps: 
        <img src="ScreenShots/PushNotificationKeyChain1.png" width="350" height="350"/>
        <img src="ScreenShots/PushNotificationKeyChain2.png" width="350" height="350"/>
        <img src="ScreenShots/PushNotificationKeyChain3.png" width="350" height="350"/>
        <img src="ScreenShots/PushNotificationKeyChain4.png" width="350" height="350"/>
        <img src="ScreenShots/PushNotificationKeyChain5.png" width="350" height="350"/>
        <img src="ScreenShots/PushNotificationKeyChain6.png" width="350" height="350"/>
    
   b- Then from apple Developer perform the following steps: 
   <img src="ScreenShots/PushNotificationAppleDev1.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev2.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev3.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev4.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev5.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev6.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev7.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationAppleDev8.png" width="250" height="250"/>
        
   c- Then from Firebase perform the following steps:  
   <img src="ScreenShots/PushNotificationFirebase1.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationFirebase2.png" width="250" height="250"/>
   <img src="ScreenShots/PushNotificationFirebase3.png" width="250" height="250"/>   
        
2- In your Project Podfile add pod 'Firebase/Messaging'.
        <img src="ScreenShots/PushNotificationPod.png" width="250" height="250"/>
                
3- Then in appDelegate file perform the following steps: 
        <img src="ScreenShots/PushNotificationAppDelegate1.png" width="250" height="250"/>
        <img src="ScreenShots/PushNotificationAppDelegate2.png" width="250" height="250"/>
        <img src="ScreenShots/PushNotificationAppDelegate3.png" width="250" height="250"/>

# Usage
- In appDelegate file perform the following steps:
    <img src="ScreenShots/PushNotificationAppDelegate1.png" width="250" height="250"/>
    <img src="ScreenShots/PushNotificationAppDelegate2.png" width="250" height="250"/>
    <img src="ScreenShots/PushNotificationAppDelegate3.png" width="250" height="250"/>
    
    * For Test the Notification:
        1- Run The application and copy the fcm token:
             <img src="ScreenShots/PushNotificationTest1.png" width="250" height="250"/>
             
        2- Then from Firebase perform the following steps: 
            <img src="ScreenShots/PushNotificationTest2.png" width="250" height="250"/>
            <img src="ScreenShots/PushNotificationTest3.png" width="250" height="250"/>
            
        Finally Congratulations 👏🏻🥳 
            <img src="ScreenShots/PushNotificationTest4.png" width="100" height="250"/>
            <img src="ScreenShots/PushNotificationTest5.png" width="100" height="250"/>

# References
* [Firebase Docs](https://firebase.google.com/docs/cloud-messaging)
* [Medium Example](https://www.raywenderlich.com/20201639-firebase-cloud-messaging-for-ios-push-notifications)
  
    
## Author
* [Zeynab Ahmed](https://github.com/ZeynabAhmed)
