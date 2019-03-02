//
//  ImageAndRectangleTableViewCell.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/5/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class ImageAndRectangleTableViewCell: BaseTableViewCell {

    @IBOutlet weak var mezzoDirectView: UIView!
    @IBOutlet weak var imageItemView: UIImageView!

    override func configure(item: ItemForTableView) {
        super.configure(item: item)
        imageItemView.image = item.image
    }

    override func awakeFromNib() {
        super.awakeFromNib()

        mezzoDirectView.layer.cornerRadius = 2.0
        mezzoDirectView.layer.borderColor = mezzoDirectView.backgroundColor?.cgColor
    }

}

