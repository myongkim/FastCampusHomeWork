//
//  ViewController.swift
//  vendingMachineApp
//
//  Created by Isaac Kim on 08/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var messageText: UILabel!
    @IBOutlet weak var priceText: UILabel!
    
    var money = 0
    var total = 0
    var message = "Time cannot be purchased. It is most valuable asset of all time."
   
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    
    @IBAction func fiftyDollarClick(_ sender: UIButton) {
        money += 50
        priceText.text = "Remaining balnce: $\(money)"
        messageText.text = "$50 has been added"
        
    }
    
    @IBAction func hundreadDollarClick(_ sender: UIButton) {
        money += 100
        priceText.text = "Remaining balnce: $\(money)"
        messageText.text = "$100 has been added"
    }
    
    @IBAction func returnMoneyClick(_ sender: UIButton) {
        
        total = money
        money = 0
        
        priceText.text = "Remaining balnce: $\(money)"
        messageText.text = "$\(total) has been return"
        
    }
    
    
    @IBAction func buyTime(_ sender: UIButton) {
        let alertViewController = UIAlertController.init(title: "Time price", message: message, preferredStyle: .alert)
        
        let dismiss = UIAlertAction.init(title: "Dismiss", style: .default, handler: nil)
        
        
        alertViewController.addAction(dismiss)
        present(alertViewController, animated: true)
        
    }
    
    
    @IBAction func buyPizza(_ sender: UIButton) {
    }
    
    @IBAction func buyXBox(_ sender: UIButton) {
    }
    
    @IBAction func buyCola(_ sender: UIButton) {
    }
    
    
}

