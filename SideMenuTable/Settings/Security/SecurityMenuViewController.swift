//
//  SecurityMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle5 = "Mezo app will autoconnect in this mode"


class SecurityMenuViewController: UITableViewController {

    private let securityMenu = [
        ItemForTableView(title: "Mezzo Tamper Sensitivity", cellClass: BaseTableViewCell.self, subtitle: "Medium", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "Entry delay time (sec)", cellClass: BaseTableViewCell.self, subtitle: "10", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "Exit delay time (sec)", cellClass: BaseTableViewCell.self, subtitle: "5", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "Panic alarm abort time (sec)", cellClass: BaseTableViewCell.self, subtitle: "20", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "Security alarm abort time (sec)", cellClass: BaseTableViewCell.self, subtitle: "0", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "Siren Lockout Mode", cellClass: SwitchTableViewCell.self, subtitle: "Not Enabled", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "Enable Ness two way radio device Supervision", cellClass: SwitchTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false)]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return securityMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = securityMenu[indexPath.row]
        let cellClass = securityMenu[indexPath.row].cellClass

        let cell: BaseTableViewCell = cellClass.create(for: tableView)
        cell.configure(item: item)
        (cell as? SwitchTableViewCell)?.delegate = self
        (cell as? ImageAndSwitchTableViewCell)?.delegate = self
        cell.selectionStyle = .none
        cell.accessoryType = item.arrow ? .disclosureIndicator : .none

        return cell
    }

    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let item = securityMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }

}

extension SecurityMenuViewController: SwitchTableViewCellDelegate {

    func actionSwitch(cell: BaseTableViewCell) {
        // TODO
    }

}
