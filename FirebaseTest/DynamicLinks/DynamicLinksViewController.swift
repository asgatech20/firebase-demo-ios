//
//  DetailsHomeViewController.swift
//  DeepLinking_POC
//
//  Created by Khalid on 13/01/2022.
//

import UIKit

class DynamicLinksViewController: UIViewController {

    @IBOutlet weak var offerIDLabel: UILabel!
    var id: String

    init(id: String){
        self.id = id
        super.init(nibName: "OffersViewController", bundle: nil)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
   override func viewDidLoad() {
        super.viewDidLoad()
       offerIDLabel.text = "OfferID: \(self.id)"
    }
}
