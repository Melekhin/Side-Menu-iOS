//
//  HelpMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/1/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle9 = "Support mezzobyness.com"

class HelpMenuViewController: UITableViewController {

    private let helpMenu = [
        ItemForTableView(title: "LINK TO SUPPORT PORTAL", cellClass: ImageTableViewCell.self, subtitle: subtitle9, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "CURRENT MEZZO ERRORS", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false)]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return helpMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = helpMenu[indexPath.row]
        let cellClass = helpMenu[indexPath.row].cellClass

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        cell.selectionStyle = .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = helpMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }

}

