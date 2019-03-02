//
//  MezzoVoicesCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class MezzoVoicesCoordinator: BaseCoordinator {

    var initialViewController: UIViewController?

    override func run() {
        let controller = MezzoVoicesViewController()
        initialViewController = navigationController.topViewController

        navigationController.pushViewController(controller, animated: true)
    }
}

