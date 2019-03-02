//
//  SwitchTableViewCell.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class SwitchTableViewCell: BaseTableViewCell {

    @IBOutlet weak var baseSwitch: UISwitch!
    var delegate: SwitchTableViewCellDelegate?

    override func configure(item: ItemForTableView) {
        super.configure(item: item)
        baseSwitch.isEnabled = item.active
    }
    
    @IBAction func switchChangedValue(_ sender: UISwitch) {
        delegate?.actionSwitch(cell: self)
    }
}
