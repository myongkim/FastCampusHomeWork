//
//  ViewController.swift
//  Gesture
//
//  Created by Isaac Kim on 01/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var touchNumber = 0
    
    @IBOutlet weak var countGesture: UILabel!
    
    @IBOutlet weak var coordinateGesture: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
   
    @IBAction func numberOfCount(_ sender: UITapGestureRecognizer) {
        
//        let count = sender.numberOfTouches
        
        if touchNumber == 0 {
            touchNumber += 1
        } else {
            touchNumber += 1
        }
        print(touchNumber)
        countGesture.text = "\(touchNumber)"
        
        let location = sender.location(in: view)
         print("location  : ",location)
        coordinateGesture.text = "\(location)"
        
        
    }
    
    
    @IBAction func Reset(_ sender: UIButton) {
         print("sender: ",sender)
        
        touchNumber = 0
        countGesture.text = "\(touchNumber)"
        coordinateGesture.text = "(000, 000)"
        
    }
    
    
    
}

