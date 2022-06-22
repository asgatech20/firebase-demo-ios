//
//  CrashlyticsAndAnalyticsViewController.swift
//  FirebaseTest
//
//  Created by Zinab Ahmed on 6/21/22.
//

import UIKit

class CrashlyticsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func tapToCrashButtonAction(_ sender: Any) {
        /// Make Crash to report crash with Firebase Crashlytics
        fatalError("Crashhhhhhhhhhhhh 😝🤪🥳")
    }
}
