//
//  AnalyticsViewController.swift
//  FirebaseTest
//
//  Created by Zinab Ahmed on 6/21/22.
//

import UIKit
import FirebaseAnalytics

class AnalyticsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        /// Use Firebase Analytics to log Event
        Analytics.logEvent("App Live Event", // Event Name
                           parameters: ["FirstKey": "app opened 🤠"]) // Event Parameters
    }
    
    @IBAction func didTapOnTapHereButton(_ sender: Any) {
        /// Use Firebase Analytics to log Event
        Analytics.logEvent("Tap Here Pls Button Event", // Event Name
                           parameters: ["FirstKey": "Hello 👋🏻 🤗"]) // Event Parameters
    }
    
}
