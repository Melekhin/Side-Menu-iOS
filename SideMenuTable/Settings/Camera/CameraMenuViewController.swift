//
//  CameraMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/1/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle8 = "Auto (Default)"

class CameraMenuViewController: UITableViewController {

    private let cameraMenu = [
        ItemForTableView(title: "HK server for cameras", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "ACCOUNT LOGIN DETAILS", cellClass: BaseTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false)]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cameraMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = cameraMenu[indexPath.row]
        let cellClass = cameraMenu[indexPath.row].cellClass

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        cell.selectionStyle = .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = cameraMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }

}

