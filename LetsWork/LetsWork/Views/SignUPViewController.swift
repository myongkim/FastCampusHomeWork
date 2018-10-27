//
//  SignUPViewController.swift
//  LetsWork
//
//  Created by Isaac Kim on 27/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class SignUPViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var initialPassword: UITextField!
    @IBOutlet weak var retypePassword: UITextField!
    
    let message = "Please retype the password"
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
    @IBAction func signUpTapped(_ sender: UIButton) {
        let savedFirstName = firstName.text
        let savedLastName = lastName.text
        let savedInitialPW = initialPassword.text
        let savedretypePW = retypePassword.text
        
        
        if savedInitialPW != savedretypePW {
            let alertController = UIAlertController(title: "Password Does not Match", message: message, preferredStyle: .alert)
            let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
            
            
            alertController.addAction(dismiss)
            present(alertController, animated: true)
            
            
            
            
            
        }
        
        
    }
    
 
}
