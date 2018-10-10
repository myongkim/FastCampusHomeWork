//
//  ViewController.swift
//  testingMVC
//
//  Created by Isaac Kim on 10/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let customer = Customer(name: "Isaac")
    let barista = Barista(name: "Mark")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        print(customer.order(barista: barista, menu: CoffeeMenu.americano))
        
      
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

