//
//  NotificationsViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class NotificationsViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    @IBOutlet weak var notifiLabel: UILabel!
    @IBOutlet weak var receiveNotifiLabel: UILabel!

    fileprivate var notificationsCells = [
        ItemForTableView(title: "I HAVE AN ALARM", cellClass: SwitchTableViewCell.self, active: false),
        ItemForTableView(title: "COMMS FAIL", cellClass: SwitchTableViewCell.self, active: false),
        ItemForTableView(title: "THERE ARE EVENTS", cellClass: SwitchTableViewCell.self, active: false),
        ItemForTableView(title: "POWER LOSS", cellClass: SwitchTableViewCell.self, active: false)]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedSectionHeaderHeight = 100
        tableView.allowsSelection = true
        notifiLabel.text = "NOTIFI ME IF..."
        receiveNotifiLabel.text = "How would you like to receive your notifications"
    }

}

extension NotificationsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return notificationsCells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = notificationsCells[indexPath.row]
        let cellClass = notificationsCells[indexPath.row].cellClass
        let cell: BaseTableViewCell = cellClass.create(for: tableView)

        cell.configure(item: item)

        return cell
    }
}

extension NotificationsViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
}
