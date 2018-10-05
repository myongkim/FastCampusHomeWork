//
//  SecondViewController.swift
//  miniProject
//
//  Created by Isaac Kim on 05/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var initialMessageDisplay: UILabel!
    var initialMessageDisplayID = "oihhoihio"

    
    override func viewDidLoad() {
        super.viewDidLoad()

    
    initialMessageDisplay.text = "Welcome To the Hell \(initialMessageDisplayID)!!"
        print(initialMessageDisplayID)
        print("1")
        
    }
    

   

}
