//
//  SecondViewController.swift
//  notification_notificationCenter
//
//  Created by Isaac Kim on 24/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var redSlide: UISlider!
    @IBOutlet weak var blueSlide: UISlider!
    @IBOutlet weak var greenSlide: UISlider!
    @IBOutlet weak var alphaSlide: UISlider!
    
  
    override func viewDidLoad() {
        super.viewDidLoad()

     }
    
    @IBAction func buttonDidTap(_ sender: UIButton) {
        
        let redColor = CGFloat(redSlide.value)
        let blueColor = CGFloat(blueSlide.value)
        let greenColor = CGFloat(greenSlide.value)
        let alphaValue = CGFloat(alphaSlide.value)
        
        //
//        let redColor = redSlide.value
//        let blueColor = blueSlide.value
//        let greenColor = greenSlide.value
//        let alphaValue = alphaSlide.value
//        
        let data = [
            "red" : redColor,
            "blue" : blueColor,
            "green" : greenColor,
            "alpha" : alphaValue
        ]
        
        NotificationCenter.default.post(name: .color, object: sender, userInfo: data)
        
    
    
    }
    
    
    
}
