//
//  AppDelegate.swift
//  TableViewEditingExample
//
//  Created by Isaac Kim on 19/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
       
        window = UIWindow(frame:UIScreen.main.bounds)
        window?.backgroundColor = .white
        let viewController = ViewController()
        let naviController = UINavigationController(rootViewController: viewController)
        window?.rootViewController = naviController
        window?.makeKeyAndVisible()
        
        return true
    }

   

}

