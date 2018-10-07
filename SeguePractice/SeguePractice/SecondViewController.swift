//
//  SecondViewController.swift
//  SeguePractice
//
//  Created by Isaac Kim on 07/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var displayTwo: UILabel!
    var displayNumber2 = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        displayTwo.text = "\(displayNumber2)"
        
        
    }


}
