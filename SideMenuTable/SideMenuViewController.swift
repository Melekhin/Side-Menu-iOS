//
//  SideMenuViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/30/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class SideMenuViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!

    fileprivate var sideMenu = [
        SideMenuCategory("Controls", [
            SideMenuItem(title: "HOME", image: #imageLiteral(resourceName: "HomeSideMenu"), coordinator: HelpMenuCoordinator.self),
            SideMenuItem(title: "USERS", image: #imageLiteral(resourceName: "UsersSideMenu"), coordinator: HelpMenuCoordinator.self)]),
        SideMenuCategory("Settings", [
            SideMenuItem(title: "APPLICATION", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), coordinator: ApplicationMenuCoordinator.self),
            SideMenuItem(title: "MEZZO", image: #imageLiteral(resourceName: "MezzoSideMenu"), coordinator: MezzoMenuCoordinator.self),
            SideMenuItem(title: "SECURITY", image: #imageLiteral(resourceName: "SecuritySideMenu"), coordinator: SecurityMenuCoordinator.self),
            SideMenuItem(title: "CLOUD", image: #imageLiteral(resourceName: "NetworkSideMenu"), coordinator: CloudMenuCoordinator.self),
            SideMenuItem(title: "Z-WAVE", image: #imageLiteral(resourceName: "DevicesSideMenu"), coordinator: ZwaveMenuCoordinator.self),
            SideMenuItem(title: "CAMERA", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), coordinator: CameraMenuCoordinator.self)]),
        SideMenuCategory("Other", [
            SideMenuItem(title: "ABOUT", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), coordinator: HelpMenuCoordinator.self),
            SideMenuItem(title: "HELP", image: #imageLiteral(resourceName: "helpAndFeedbackSideMenu"), coordinator: HelpMenuCoordinator.self),
            SideMenuItem(title: "buy DEVICES", image: #imageLiteral(resourceName: "buyDevicesSideMenu"), coordinator: BuyDevicesMenuCoordinator.self)])]

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.estimatedSectionHeaderHeight = 100
        tableView.allowsSelection = true
        tableView.tableFooterView = UIView(frame: .zero)
    }

}

extension SideMenuViewController: UITableViewDataSource {

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return sideMenu[section].items.count
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return sideMenu.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let section = indexPath.section
        let row = indexPath.row

        let item = sideMenu[section].items[row]
        let cell: ImageTableViewCell = .create(for: tableView)

        cell.configure(title: item.title, image: item.image)
        cell.selectionStyle = .none

        return cell
    }

}

extension SideMenuViewController: UITableViewDelegate {

    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let headerView: SideMenuHeaderView = .initFromNib()
        let fontHeader = UIFont.boldSystemFont(ofSize: 12)
        let header = sideMenu[section].category
        headerView.setHeader(header, fontHeader)

        let rectSeparator = CGRect(x: 0, y: 0, width: tableView.bounds.size.width, height: 0.5)
        let separatorView = UIView(frame: rectSeparator)
        separatorView.backgroundColor = .white
        headerView.addSubview(separatorView)

        return headerView
    }

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let section = indexPath.section
        let row = indexPath.row
        let item = sideMenu[section].items[row]
        let coordinator = item.coordinator.init(navigationController!)
        coordinator.run()
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 57
    }
}
