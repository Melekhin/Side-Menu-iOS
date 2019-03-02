//
//  MezzoVoicesViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle10 = "Disabled voice for the ZWave devices, errors, activated alarm"

class MezzoVoicesViewController: UITableViewController {

    private let mezzoVoiceCells = [
        ItemForTableView(title: "VOICE ON ARM", cellClass: ImageAndSwitchTableViewCell.self, subtitle: "Disabled",
                         image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "VOICE ON ALARM", cellClass: ImageAndSwitchTableViewCell.self,
                         subtitle: "Disabled", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "VOICE ON ALL", cellClass: ImageAndSwitchTableViewCell.self, subtitle: subtitle10, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")) ]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mezzoVoiceCells.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellClass = mezzoVoiceCells[indexPath.row].cellClass
        let item = mezzoVoiceCells[indexPath.row]

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

