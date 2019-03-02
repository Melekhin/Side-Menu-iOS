//
//  SecurityMenuCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class SecurityMenuCoordinator: BaseCoordinator {

    var initialViewController: UIViewController?

    override func run() {
        let controller = SecurityMenuViewController()
        initialViewController = navigationController.topViewController

        navigationController.pushViewController(controller, animated: true)
    }
}
