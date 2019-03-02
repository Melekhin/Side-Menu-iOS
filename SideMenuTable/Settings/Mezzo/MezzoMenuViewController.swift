//
//  MezzoMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/31/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

let subtitle4 = "Auto (Default)"

class MezzoMenuViewController: UITableViewController {

    private let mezzoMenu = [
        ItemForTableView(title: "MEZZO VOICES", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true,
                         coordinator: MezzoVoicesCoordinator.self),
        ItemForTableView(title: "MEZZO VOLUME", cellClass: ImageTableViewCell.self, subtitle: "Medium", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "MEZZO LIGHTS", cellClass: ImageTableViewCell.self, subtitle: "Off", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu")),
        ItemForTableView(title: "MEZZO TIME", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false),
        ItemForTableView(title: "CLOUD SERVER CONNECTION METHOD", cellClass: ImageTableViewCell.self,
                         subtitle: subtitle4, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false),
        ItemForTableView(title: "WIFI", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, coordinator: WifiCoordiantor.self),
        ItemForTableView(title: "CELLULAR", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false),
        ItemForTableView(title: "LOW POWER MODE", cellClass: ImageAndSwitchTableViewCell.self, subtitle: subtitle4, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), active: false),
        ItemForTableView(title: "RESET", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true),
        ItemForTableView(title: "CURRENT MEZZO ERRORS", cellClass: ImageTableViewCell.self, image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), arrow: true, active: false)]

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.cellLayoutMarginsFollowReadableWidth = false
        tableView.backgroundColor = .mezzoBackground
        tableView.tableFooterView = UIView(frame: .zero)
        tableView.separatorInset = .zero
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return mezzoMenu.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let item = mezzoMenu[indexPath.row]
        let cellClass = mezzoMenu[indexPath.row].cellClass

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
        let item = mezzoMenu[indexPath.row]
        if let coordinatorType = item.coordinator {
            let coordinator = coordinatorType.init(navigationController!)
            coordinator.run()
        }
    }

}

extension MezzoMenuViewController: SwitchTableViewCellDelegate {

    func actionSwitch(cell: BaseTableViewCell) {
        // TODO
    }

}
