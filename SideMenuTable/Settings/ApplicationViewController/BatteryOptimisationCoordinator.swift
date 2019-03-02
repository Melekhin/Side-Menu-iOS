//
//  BatteryOptimisationCoordinator.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/2/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

class BatteryOptimisationCoordinator: BaseCoordinator {

    override func run() {
        // TODO: In Mezzo move to extension UIApplication
        let scheme = "App-prefs:root=BATTERY_USAGE"
        let app = UIApplication.shared
        if let url = URL(string: scheme), app.canOpenURL(url) {
            app.open(url,
                     options: [:],
                     completionHandler: nil)
        } else if let url = URL(string: UIApplicationOpenSettingsURLString), app.canOpenURL(url) {
            app.open(url,
                     options: [:],
                     completionHandler: nil)
        } else {
            //TODO add mezzoPrint()
            print("can't")
        }
    }

}
