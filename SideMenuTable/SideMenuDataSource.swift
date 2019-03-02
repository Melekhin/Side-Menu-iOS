//
//  SideMenuDataSource.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/30/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

struct SideMenuCategory {

    let category: String
    let items: [SideMenuItem]

    init(_ category: String, _ items: [SideMenuItem]) {
        self.category = category
        self.items = items
    }
}

struct SideMenuItem {

    let title: String
    let image: UIImage
    let coordinator: BaseCoordinator.Type

    init(title: String, image: UIImage, coordinator: BaseCoordinator.Type) {
        self.title = title
        self.image = image
        self.coordinator = coordinator
    }
}
