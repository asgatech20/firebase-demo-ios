//
//  HomeViewController.swift
//  FirebaseTest
//
//  Created by Khaled Mahmoud on 21/06/2022.
//

import UIKit

class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: Crashlytics
    @IBAction func didTapCrashlyticsButton(_ sender: Any) {
        navigationController?.pushViewController(CrashlyticsViewController(), animated: true)
        
    }
    
    //MARK: Analytics
    @IBAction func didTapAnalyticsButton(_ sender: Any) {
        navigationController?.pushViewController(AnalyticsViewController(), animated: true)
    }
    
    //MARK: PushNotifications
    @IBAction func didTapPushNotificationsButton(_ sender: Any) {
        navigationController?.pushViewController(CrashlyticsViewController(), animated: true)
    }
    
    //MARK: RemoteConfig
    @IBAction func didTabRemoteConfigBtn(_ sender: UIButton) {
        navigationController?.pushViewController(RemoteConfigController(), animated: true)
    }
    
    //MARK: DynamicLink
    @IBAction func didTabDynamicLinksBtn(_ sender: UIButton) {
        navigationController?.pushViewController(RemoteConfigController(), animated: true)
    }
    
    
    
    
}
