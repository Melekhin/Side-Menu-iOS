//
//  UIViewController+Init.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/30/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

extension UIViewController {

    static func initFromNib<T>() -> T where T: UIViewController {
        return T(nibName: String(describing: self), bundle: nil)
    }

}
