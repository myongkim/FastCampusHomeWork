//
//  ViewController.swift
//  notification_notificationCenter
//
//  Created by Isaac Kim on 24/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

extension Notification.Name{
    
    static let color = Notification.Name("color")
    
}

class FirstViewController: UIViewController {

    @IBOutlet weak var colorDisplay: UIView!
    
        
    override func viewDidLoad() {
        super.viewDidLoad()
        
        NotificationCenter.default.addObserver(self, selector: #selector(setColor(_:)), name: .color, object: nil)
        
    }

    
    @objc func setColor(_ sender: Notification) {
        
        
        print(sender)
        // getting data from NOtificationCenter to Notification
        // sender.UserInfo gets the data, gets the optional Data to optional Binding. 
        guard let colorData = sender.userInfo as? [ String : CGFloat],
              let red = colorData["red"],
              let green = colorData["green"],
              let blue = colorData["blue"],
              let alpha = colorData["alpha"]
            else { return }
        
        
        
        colorDisplay.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: alpha)
        
        
    }
    
    

}

