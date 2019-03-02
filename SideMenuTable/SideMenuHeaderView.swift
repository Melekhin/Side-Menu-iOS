//
//  SideMenuHeaderView.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class SideMenuHeaderView: UIView {

    @IBOutlet weak var headerLabel: UILabel!

    func setHeader(_ header: String, _ font: UIFont) {
        headerLabel.text = header
        headerLabel.font = font
    }
}
