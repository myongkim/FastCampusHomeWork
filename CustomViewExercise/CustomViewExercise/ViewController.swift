//
//  ViewController.swift
//  CustomViewExercise
//
//  Created by Isaac Kim on 17/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController, DrinkViewDelegate {
    
 
    @IBOutlet var customVendingMachine: [DrinkView]!
    
    func increase(_ drinkView: DrinkView) {
        print("Increase has been tapped")
        
    }

    func decrease(_ drinkView: DrinkView) {
        print("Decrease has been tapped")
        
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        for i in customVendingMachine{
            i.delegate = self
        }
        
        
        // Do any additional setup after loading the view, typically from a nib.
        
    
        
    }

    
    

}

