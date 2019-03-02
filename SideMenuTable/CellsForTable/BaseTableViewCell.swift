//
//  File.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/1/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class BaseTableViewCell: UITableViewCell {
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var subtitleLabel: UILabel!

    func configure(item: ItemForTableView) {
        titleLabel.text = item.title
        subtitleLabel.text = item.subtitle
        titleLabel.textColor = item.active ? .white : .gray
    }
}
