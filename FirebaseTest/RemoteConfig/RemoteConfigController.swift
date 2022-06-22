//
//  HomeViewController.swift
//  FirebaseTest
//
//  Created by Khaled Mahmoud on 20/06/2022.
//

import UIKit
import Firebase

class RemoteConfigController: UIViewController {
 
    @IBOutlet weak var EidWlecomeStack: UIStackView!
    
    private var showEidMessage: Bool!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        fetchRemoteConfigSetting()
    }
    
    private func setupRemoteConfig() {
        let settings = RemoteConfigSettings()
        settings.minimumFetchInterval = 0
        RemoteConfig.remoteConfig().configSettings = settings
    }
    
    private func fetchRemoteConfigSetting() {
        setupRemoteConfig()
        RemoteConfig.remoteConfig().fetch { [weak self] (status, error) -> Void in
            if status == .success {
                print("Remote Config fetched Successfully!")
                RemoteConfig.remoteConfig().activate()
            } else {
                print("Remote Config not fetched")
                print("Error: \(error?.localizedDescription ?? "No error available.")")
            }
            self?.showEidMessage = RemoteConfig.remoteConfig().configValue(forKey: "showEidMessage").boolValue
            self?.EidWlecomeStack.isHidden = !(self?.showEidMessage ?? false)
        }
    }
}
