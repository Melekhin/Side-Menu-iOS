//
//  ItemForTableView.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

struct ItemForTableView {

    let title: String?
    let subtitle: String?
    let image: UIImage?
    let arrow: Bool
    let active: Bool
    let cellClass: BaseTableViewCell.Type
    let coordinator: BaseCoordinator.Type?
    let switchAction: ActionableSwitchTableViewCell.Type?

    init(title: String? = nil,  cellClass: BaseTableViewCell.Type, subtitle: String? = nil, image: UIImage? = nil, arrow: Bool = false,
         coordinator: BaseCoordinator.Type? = nil, active: Bool = true, switchAction: ActionableSwitchTableViewCell.Type? = nil) {
        self.title = title
        self.subtitle = subtitle
        self.image = image
        self.arrow = arrow
        self.cellClass = cellClass
        self.coordinator = coordinator
        self.active = active
        self.switchAction = switchAction
    }

}
