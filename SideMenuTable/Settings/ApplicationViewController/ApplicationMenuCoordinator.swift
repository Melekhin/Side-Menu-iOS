//
//  ApplicationMenuCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class ApplicationMenuCoordinator: BaseCoordinator {

    override func run() {
        let controller = ApplicationMenuViewController()

        navigationController.pushViewController(controller, animated: true)
    }

}
