//
//  ConnectionMethodViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/5/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle11 = "Default, both Ethernet and Cellular are enabled"
let subtitle12 = "Neither Ethernet nor Cellular is enabled, no connection with Ness cloud"

class ConnectionMethodViewController: UITableViewController {

    private let connectionMethodCells = [
        ItemForTableView(title: "Auto (Default)", cellClass: BaseTableViewCell.self, subtitle: subtitle11, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "Ethernet only", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "Cellular only", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "None", cellClass: BaseTableViewCell.self, subtitle: subtitle12, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false) ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return connectionMethodCells.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellClass = connectionMethodCells[indexPath.row].cellClass
        let item = connectionMethodCells[indexPath.row]

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        cell.selectionStyle = .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

}
