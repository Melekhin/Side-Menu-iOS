//
//  BuyDevicesMenuCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class BuyDevicesMenuCoordinator: BaseCoordinator {

    var initialViewController: UIViewController?

    override func run() {
        initialViewController = navigationController.topViewController

        if let url = URL(string: "http://yoursmarterhome.com") {
            UIApplication.shared.open(url)
        }
    }
}
