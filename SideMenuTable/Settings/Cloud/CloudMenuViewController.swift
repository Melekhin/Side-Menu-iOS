//
//  CloudMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/1/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle6 = "Auto (Default)"

class CloudMenuViewController: UITableViewController {

    private let cloudMenu = [
        ItemForTableView(title: "My ACTIVITY", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false),
        ItemForTableView(title: "CLOUD SERVER CONNECTION METHOD", cellClass: ImageTableViewCell.self,
                         subtitle: "Auto (Default)", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, coordinator: ConnectionMethodCoordinator.self),
        ItemForTableView(title: "CLOUD LOG OUT", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")) ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cloudMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellClass = cloudMenu[indexPath.row].cellClass
        let item = cloudMenu[indexPath.row]
        
        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        cell.selectionStyle = .none
        cell.accessoryType = item.arrow ? .disclosureIndicator : .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = cloudMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }

}
