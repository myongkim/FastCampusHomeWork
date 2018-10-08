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
    var collection: Array<String> = []
    var message2 = "This is what you have purchased so far"
    
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
// cannot produce message for the message when the money is less than $50
//        guard money >= 50 else { return }
//
//        money -= 50
//        priceText.text = "Remaining balnce: $\(money)"
//        messageText.text = "Pizza has been puchased"
//
        if money >= 50 {
            money -= 50
            priceText.text = "Remaining balnce: $\(money)"
            messageText.text = "Pizza has been puchased"
            collection.append("Pizza")

        } else {
            
            messageText.text = "You don't have enough money, please reload the money"
        }
        
        
    }
    
    @IBAction func buyXBox(_ sender: UIButton) {
        if money >= 350 {
            money -= 350
            priceText.text = "Remaining balnce: $\(money)"
            messageText.text = "XboxOne has been puchased"
            collection.append("XboxOne")
            
            
        } else {
            
            messageText.text = "You don't have enough money, please reload the money"
        }
        
        
    }
    
    @IBAction func buyCola(_ sender: UIButton) {
        if money >= 2 {
            money -= 2
            priceText.text = "Remaining balnce: $\(money)"
            messageText.text = "Cola has been puchased"
            collection.append("Cola")
            
        } else {
            
            messageText.text = "You don't have enough money, please reload the money"
        }
        
    }
    
    
    @IBAction func purchasedList(_ sender: UIButton) {
        
        let alertViewController = UIAlertController.init(title: "Purchased List", message: message2, preferredStyle: .alert)
        
        let alertMessage = UIAlertAction.init(title: "Dismiss", style: .default) { _ in
            for i in self.collection {
                print("you have puchased \(i)")
                
            }
        }
        
        alertViewController.addAction(alertMessage)
        present(alertViewController, animated: true)
        
        
    }
    
//    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
//
//
//    }
//
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        super.prepare(for: segue, sender: sender)
//
//        guard let secondVC = segue.destination as? SecondViewController else { return }
//
//        secondVC.list = collection
//
//
//    }
    
    
}

