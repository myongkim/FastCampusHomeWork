//
//  SecondViewController.swift
//  UserDefaultStudy
//
//  Created by Isaac Kim on 09/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var player1: UILabel!
    @IBOutlet weak var player2: UILabel!
    @IBOutlet weak var player3: UILabel!
    @IBOutlet weak var player4: UILabel!
    @IBOutlet weak var longListText: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
   
        
    longListText.layer.borderWidth = 1
    longListText.layer.cornerRadius = 20
    longListText.layer.borderColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        

        

    }
    

    
   

}
