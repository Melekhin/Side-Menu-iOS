//
//  UITableViewCell+Create.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/30/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

extension UITableViewCell {

    static func create<T>(for tableView: UITableView) -> T where T: UITableViewCell {
        let cellIdentifier = String(describing: self)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) else {
            tableView.register(UINib(nibName: cellIdentifier, bundle: Bundle.main), forCellReuseIdentifier: cellIdentifier)
            return tableView.dequeueReusableCell(withIdentifier: cellIdentifier)! as! T
        }
        return cell as! T
    }

}
