//
//  NotificationsCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class NotificationsCoordinator: BaseCoordinator {

    override func run() {
        let controller: NotificationsViewController = .initFromNib()
        navigationController.pushViewController(controller, animated: true)
    }

}
