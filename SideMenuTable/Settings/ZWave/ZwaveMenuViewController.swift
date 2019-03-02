//
//  ZwaveMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/1/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle7 = "Auto (Default)"

class ZwaveMenuViewController: UITableViewController {

    private let zwaveMenu = [ ItemForTableView(title: "EXCLUDE MODE", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
                              ItemForTableView(title: "INCLUDE MODE", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
                              ItemForTableView(title: "NETWORK HEALTH", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false) ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return zwaveMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = zwaveMenu[indexPath.row]
        let cellClass = zwaveMenu[indexPath.row].cellClass

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        cell.selectionStyle = .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = zwaveMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }

}
