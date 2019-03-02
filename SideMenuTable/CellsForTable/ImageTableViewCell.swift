//
//  ImageTableViewCell.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class ImageTableViewCell: BaseTableViewCell {

    @IBOutlet weak var imageItemView: UIImageView!

    override func configure(item: ItemForTableView) {
        super.configure(item: item)
        subtitleLabel.text = item.subtitle
        imageItemView.image = item.image
    }

    func configure(title: String, image: UIImage) {
        titleLabel.text = title
        imageItemView.image = image
    }

}
