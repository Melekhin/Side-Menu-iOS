//
//  UIColor.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 2/1/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {

    convenience init(_ red: Int, _ green: Int, _ blue: Int) {
        let red = (red < 0) ? 0 : (red > 255) ? 255 : red
        let green = (green < 0) ? 0 : (green > 255) ? 255 : green
        let blue = (blue < 0) ? 0 : (blue > 255) ? 255 : blue

        self.init(red: CGFloat(red) / 255.0, green: CGFloat(green) / 255.0, blue: CGFloat(blue) / 255.0, alpha: 1.0)
    }

    convenience init(_ hex: Int) {
        self.init(
            (hex >> 16) & 0xFF,
            (hex >> 8) & 0xFF,
            hex & 0xFF
        )
    }

    static let mezzoBackground = UIColor(0x141414)

}
