//
//  ViewController.swift
//  notificationPractice
//
//  Created by Isaac Kim on 23/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

extension Notification.Name {
    static let redValue = Notification.Name("redValue")
    static let greenValue = Notification.Name("greenValue")
    static let blueValue = Notification.Name("blueValue")
    
    static let color = Notification.Name("color")
    
    
}
class ViewController: UIViewController {

    
    @IBOutlet weak var colorLabel: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        NotificationCenter.default.addObserver(self, selector: #selector(setColor(_:)), name: .color, object: nil)
        
    }
    
    @objc func setColor(_ sender: Notification) {
        guard let colorData = sender.userInfo,
            let redColorValue = colorData["red"] as? CGFloat,
            let bluecolorValue = colorData["blue"] as? CGFloat,
            let greenColorValue = colorData["green"] as? CGFloat,
            let alphaValue = colorData["alpha"] as? CGFloat
            else { return }
        
        colorLabel.backgroundColor = UIColor(red: redColorValue, green: greenColorValue, blue: bluecolorValue, alpha: alphaValue)
        
        
    }
    

    

}

