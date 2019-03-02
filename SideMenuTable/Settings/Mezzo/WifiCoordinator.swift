//
//  WifiCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/5/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class WifiCoordiantor: BaseCoordinator {

    override func run() {
        let controller = WifiViewController()

        navigationController.pushViewController(controller, animated: true)
    }
}

