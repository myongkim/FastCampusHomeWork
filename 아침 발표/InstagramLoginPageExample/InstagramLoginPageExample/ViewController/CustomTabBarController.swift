//
//  CustumTabBarController.swift
//  InstagramLoginPageExample
//
//  Created by Wi on 24/10/2018.
//  Copyright © 2018 Wi. All rights reserved.
//

import UIKit

class CustomTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let login = LoginViewController()
        self.viewControllers = [login]
    }
}
