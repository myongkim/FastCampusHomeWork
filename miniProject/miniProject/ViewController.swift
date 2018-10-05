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
    let user1Password = "123"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    
    
    @IBAction func unwindToViewController(_ unwindSegue: UIStoryboardSegue) {
    }
    
   
    @IBAction func alertForWrongIDPW(_ sender: UIButton) {
      
        
        
        if loginText.text == user1Id && passwordText.text == user1Password {
            
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
    
    override func performSegue(withIdentifier identifier: String, sender: Any?) {
        
      
        
        super.performSegue(withIdentifier: "login", sender: sender)
       
        let secondVC = SecondViewController()
        guard let logtext = loginText.text else {return}
        secondVC.initialMessageDisplayID = logtext
       
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let sc = segue.destination as? SecondViewController else {return}
        
        sc.initialMessageDisplayID = loginText.text!
        
    }
   
}

