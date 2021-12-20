//
//  MoreViewController.swift
//  Swifty Router
//
//  Created by Basem Emara on 7/31/17.
//  Copyright © 2017 Zamzam Inc. All rights reserved.
//

import UIKit
// Test ß
class MoreViewController: UIViewController {
 
    @IBOutlet weak var someLabel: UILabel!
    
    var someProperty: String?
    var etcValue = 10
    @IBAction func MoreMoreTap(_ sender: Any) {
        show(storyboard: .moremore) { (controller: MoreMoreViewController) in
            // Configure controller value before loaded
            controller.moreMoreProperty = "My name is More"
            controller.moreView = self
         }
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let text = someProperty else { return }
        someLabel.text = text
    }

}
    
extension MoreViewController: Routable {
        
        enum StoryboardIdentifier: String {
            case moremore = "MoreMore"
        }
}
