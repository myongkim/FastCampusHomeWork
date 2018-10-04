//
//  ViewController.swift
//  10_4_practice_coding
//
//  Created by Isaac Kim on 04/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

//final class Singleton

class ViewController: UIViewController {
    
    var message = "Please state your first and Last Name"
    
    @IBOutlet weak var nameLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.nameLabel.text = UserDefaults.standard.value(forKeyPath: "storedName") as? String
        
    }
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue) {
        
    }
    
    @IBAction func alertControl(_ sender: UIButton) {
        
        let alertButtonController = UIAlertController.init(title: "Your Name?", message: message, preferredStyle: .alert)
        
        //alertcontroller variable
        let yes = UIAlertAction.init(title: "Yes", style: .default) { _ in
            
            
            
            // self.nameLabel.text = alertButtonController.textFields![0].text
            //   let storedName = self.nameLabel.text
            
            
            UserDefaults.standard.set(alertButtonController.textFields![0].text, forKey: "storedName")
            
            self.nameLabel.text = UserDefaults.standard.value(forKeyPath: "storedName") as? String
            
        }
        let no = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
        
        
        // alert actions
        alertButtonController.addAction(yes)
        alertButtonController.addAction(no)
        alertButtonController.addTextField { word in
            word.placeholder = "this is the placeholder."
        }
        
        // execution of the alertcontroller
        present(alertButtonController, animated: true)
        
        
        
    }
    
    
    
}

