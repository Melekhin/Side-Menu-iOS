//
//  WifiViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/5/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class WifiViewController: UITableViewController {

    private let mezzoWifiCells = [
        ItemForTableView(title: "HOME WIFI", cellClass: ImageTableViewCell.self, subtitle: "Mezzo Wi-Fi #2",
                         image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "MEZZO WIFI", cellClass: ImageTableViewCell.self,
                         subtitle: "My-Mezzo_0C5F", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "MEZZO_DIRECT", cellClass: ImageAndRectangleTableViewCell.self,
                         subtitle: "My-Mezzo_0C5F", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false) ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mezzoWifiCells.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellClass = mezzoWifiCells[indexPath.row].cellClass
        let item = mezzoWifiCells[indexPath.row]

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        cell.selectionStyle = .none
        cell.accessoryType = item.arrow ? .disclosureIndicator : .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

}

