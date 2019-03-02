//
//  ViewController.swift
//  SideMenuTable
//
//  Created by Konstantin Melehin on 1/30/18.
//  Copyright © 2018 Konstantin Melehin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var showButton: UIButton!
    var navigation: UINavigationController!

    override func viewDidLoad() {
        super.viewDidLoad()

        showButton.layer.borderColor = UIColor.white.cgColor
        showButton.layer.borderWidth = 2
        showButton.layer.cornerRadius = 4
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)

        let controller: SideMenuViewController = .initFromNib()
        navigationController?.pushViewController(controller, animated: true)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    @IBAction func showButtonTouchUpInside(_ sender: UIButton) {
        let controller: SideMenuViewController = .initFromNib()
        navigationController?.pushViewController(controller, animated: true)
    }

}

