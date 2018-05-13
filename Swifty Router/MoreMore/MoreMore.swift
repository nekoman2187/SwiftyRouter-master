//
//  MoreMore.swift
//  Swifty Router
//
//  Created by 渡辺 昭則 on 2018/05/03.
//  Copyright © 2018年 Zamzam Inc. All rights reserved.
//

import Foundation
import UIKit

class MoreMoreViewController: UIViewController {
    var moreView:MoreViewController? = nil
  //  let etcInt:Int?
    var moreMoreProperty: String?

    @IBOutlet var MoreMoreLable: UILabel!
    
    @IBAction func loginTapped() {
        /* UN-SWIFTY WAY
         let storyboard = UIStoryboard(name: "Profile", bundle: nil)
         
         guard let controller = storyboard.instantiateInitialViewController()
         else { fatalError("Invalid controller for storyboard.") }
         
         show(controller, sender: nil)
         */
        
        show(storyboard: .profile)
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        guard let text = moreMoreProperty else { return }
        MoreMoreLable.text = text
        print(moreView?.etcValue ?? 50000)
    }
}


extension MoreMoreViewController: Routable {
    
    enum StoryboardIdentifier: String {
        case profile = "Profile"
    }
}
