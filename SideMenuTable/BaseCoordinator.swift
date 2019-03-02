//
//  BaseCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class BaseCoordinator {

    let navigationController: UINavigationController
    var childCoordinators = [BaseCoordinator]()

    var finished: ((Bool) -> Void)?

    required init(_ navigationController: UINavigationController) {
        self.navigationController = navigationController
    }

    func run() {
        preconditionFailure()
    }
}
