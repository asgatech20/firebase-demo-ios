//
//  AppDelegate.swift
//  FirebaseTest
//
//  Created by Khaled Mahmoud on 20/06/2022.
//

import UIKit
import Firebase
import FirebaseMessaging
import FirebaseDynamicLinks

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        FirebaseApp.configure()
        Messaging.messaging().delegate = self
        registerForRemoteNotification()
        return true
    }
    
    func setRootToOffers(offerID: String) {
        window = UIWindow()
        let controller = DynamicLinksViewController(id: offerID)
        window?.rootViewController = UINavigationController(rootViewController: (controller))
        window?.makeKeyAndVisible()
    }
    
    func application(_ app: UIApplication, open url: URL, options: [UIApplication.OpenURLOptionsKey : Any] = [:]) -> Bool {
        guard let dynamicLink = DynamicLinks.dynamicLinks().dynamicLink(fromCustomSchemeURL: url), let url = dynamicLink.url else {return false}
        self.handleIncomingDynamicLinks(url)
        return true
    }
    
    func application(_ application: UIApplication,
                     continue userActivity: NSUserActivity,
                     restorationHandler: @escaping ([UIUserActivityRestoring]?) -> Void) -> Bool {
        // Get URL components from the incoming user activity.
        guard userActivity.activityType == NSUserActivityTypeBrowsingWeb,
              let incomingURL = userActivity.webpageURL else {
                  return false
              }
        handleIncomingDynamicLinks(incomingURL)
        return true
    }
    
    func handleIncomingDynamicLinks(_ url: URL) {
        // url = "DeepLinkingPOC://offers?offerID=5"
        let urlStr = url.absoluteString //1
        
        // Parse the custom URL as per your requirement.
        let component = urlStr.components(separatedBy: "=")
        
        if component.count > 1, let id = component.last {
            setRootToOffers(offerID: id)
        }
    }
    
    func registerForRemoteNotification() {
        if #available(iOS 10.0, *) {
            let center = UNUserNotificationCenter.current()
            center.delegate = self
            center.requestAuthorization(options: [.sound, .alert, .badge]) { (granted, error) in
                if error == nil{
                    DispatchQueue.main.async {
                        UIApplication.shared.registerForRemoteNotifications()
                    }
                }
            }
        }
        else {
            UIApplication.shared.registerUserNotificationSettings (UIUserNotificationSettings(types: [.sound, .alert, .badge], categories: nil))
            UIApplication.shared.registerForRemoteNotifications()
        }
    }
}

extension AppDelegate: UNUserNotificationCenterDelegate {
    func application(_ application: UIApplication, didReceiveRemoteNotification userInfo: [AnyHashable: Any], fetchCompletionHandler completionHandler: @escaping (UIBackgroundFetchResult) -> Void) {
        Messaging.messaging().appDidReceiveMessage(userInfo)
        print(userInfo) // handle Notification Navigation or any Actions regard to userInfo
        completionHandler(.newData)
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, didReceive response: UNNotificationResponse, withCompletionHandler completionHandler: @escaping () -> Void) {
        let userInfo = response.notification.request.content.userInfo
        print(userInfo) // handle Notification Navigation or any Actions regard to userInfo
        completionHandler()
    }
    func userNotificationCenter(_ center: UNUserNotificationCenter, willPresent notification: UNNotification, withCompletionHandler completionHandler: @escaping (UNNotificationPresentationOptions) -> Void) {
        UIApplication.shared.applicationIconBadgeNumber = UIApplication.shared.applicationIconBadgeNumber + 1
        let info = notification.request.content.userInfo
        guard let presentationOptions = presentationsOptionsForNotificationInfo(info) else { return }
        completionHandler(presentationOptions)
    }
    func presentationsOptionsForNotificationInfo(_ info: [AnyHashable: Any]) -> UNNotificationPresentationOptions? {
        if #available(iOS 14, *) {
            return [.alert, .badge, .sound, .list, .banner]
        }
        return [.alert, .badge, .sound]
    }
    func application(_ application: UIApplication, didRegisterForRemoteNotificationsWithDeviceToken deviceToken: Data) {
        Messaging.messaging().apnsToken = deviceToken
        let deviceTokenString = deviceToken.map { String(format: "%02.2hhx", $0) }.joined()
        print("deviceTokenString \(deviceTokenString)")
    }
}

extension AppDelegate: MessagingDelegate {
    func messaging(_ messaging: Messaging, didReceiveRegistrationToken fcmToken: String?) {
        print("FcmToken " + (fcmToken ?? "No token"))
    }
}
