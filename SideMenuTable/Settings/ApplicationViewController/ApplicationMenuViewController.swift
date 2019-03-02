//
//  ApplicationMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle = "Mezo app will autoconnect in this mode"
let subtitle2 = "Including contacts"
let subtitle3 = "Synchronise to see all devices added to Mezzo"

class ApplicationMenuViewController: UITableViewController {

    private let applicationMenu = [
        ItemForTableView(title: "NOTIFICATIONS", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true,
                         coordinator: NotificationsCoordinator.self),
        ItemForTableView(title: "BATTERY OPTIMISATION", cellClass: ImageTableViewCell.self, subtitle: subtitle,
                         image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, coordinator: BatteryOptimisationCoordinator.self),
        ItemForTableView(title: "SYNC AFTER RECONNECT", cellClass: ImageAndSwitchTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "SYNCHRONISE ALL", cellClass: ImageTableViewCell.self, subtitle: subtitle3, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "EMERGENCY ALERT SETTINGS", cellClass: ImageTableViewCell.self, subtitle: subtitle2, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true),
        ItemForTableView(title: "GEOFENCES", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true),
        ItemForTableView(title: "ROOMS", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true),
        ItemForTableView(title: "GROUPS", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true),
        ItemForTableView(title: "REMINDERS", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true)]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return applicationMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = applicationMenu[indexPath.row]
        let cellClass = applicationMenu[indexPath.row].cellClass

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        (cell as? SwitchTableViewCell)?.delegate = self
        (cell as? ImageAndSwitchTableViewCell)?.delegate = self
        cell.configure(item: item)
        cell.selectionStyle = .none
        cell.accessoryType = item.arrow ? .disclosureIndicator : .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = applicationMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }
}

extension ApplicationMenuViewController: SwitchTableViewCellDelegate {

    func actionSwitch(cell: BaseTableViewCell) {
        // TODO
//        let indexPath = tableView.indexPath(for: cell)!
//        let elementMenu = applicationMenu[indexPath.row]
    }

}
