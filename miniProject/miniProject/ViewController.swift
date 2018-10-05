//
//  ViewController.swift
//  miniProject
//
//  Created by Isaac Kim on 05/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    
    var message = "Your password is too short"
    let user1Id = "myongkim"
    let user1Password = "myong328"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
    }

    @IBAction func alertForWrongIDPW(_ sender: UIButton) {
      
        
        
        if loginText.text == "myongkim" && passwordText.text == "myong328" {
            
            print(loginText.text!)
            print(passwordText.text!)
           
           let secondVC = SecondViewController()
            
            
            guard let logtext = loginText.text else {return}
            secondVC.initialMessageDisplayID = logtext
            performSegue(withIdentifier: "login", sender: sender)
            
            
            
        } else {
            
            let alertController = UIAlertController.init(title: "Invalid Entry", message: message, preferredStyle: .alert)
            
            let ok = UIAlertAction.init(title: "Ok", style: .default, handler: nil)
            
            alertController.addAction(ok)
            present(alertController, animated: true)
        }
        

        
    }
    

    
}

