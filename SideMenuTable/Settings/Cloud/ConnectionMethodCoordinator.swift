//
//  ConnectionMethodCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/5/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class ConnectionMethodCoordinator: BaseCoordinator {

    override func run() {
        let controller = ConnectionMethodViewController()

        navigationController.pushViewController(controller, animated: true)
    }
}
