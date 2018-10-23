//
//  SecondViewController.swift
//  notificationPractice
//
//  Created by Isaac Kim on 23/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var redValue: UISlider!
    @IBOutlet weak var blueValue: UISlider!
    @IBOutlet weak var greenValue: UISlider!
    @IBOutlet weak var alphaValue: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func buttonDidTap(_ sender: UIButton) {
        
        let red = CGFloat(redValue.value)
        let blue = CGFloat(blueValue.value)
        let green = CGFloat(greenValue.value)
        let alpha = CGFloat(alphaValue.value)
        
        let data: [String : CGFloat] = [
            "red" : red,
            "blue" : blue,
            "green" : green,
            "alpha" : alpha
        ]
        
        NotificationCenter.default.post(name: .color, object: sender, userInfo: data)
        
        
    }
    

}
