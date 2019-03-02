//
//  SideMenuTableViewCell.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/30/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class SideMenuTableViewCell: UITableViewCell {

    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var imageMenuView: UIImageView!

    func configure(name: String, image: UIImage) {
        nameLabel.text = name
        imageMenuView.image = image
        imageMenuView.contentMode = .scaleToFill
    }
}
