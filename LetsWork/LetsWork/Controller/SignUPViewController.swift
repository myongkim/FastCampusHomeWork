//
//  SignUPViewController.swift
//  LetsWork
//
//  Created by Isaac Kim on 27/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

struct UserInfo {
    var id: String
    var pw: String
    var email: String
    let firstName : String
    let lastName: String
    
}

class SignUPViewController: UIViewController {

    @IBOutlet weak var firstName: UITextField!
    @IBOutlet weak var lastName: UITextField!
    @IBOutlet weak var userID: UITextField!
    @IBOutlet weak var initialPassword: UITextField!
    @IBOutlet weak var retypePassword: UITextField!
    @IBOutlet weak var userEmail: UITextField!
    
    
    let message = "Please retype the password"
    let segueIdentifierForSignUp = "signup"
    
    override func viewDidLoad() {
        super.viewDidLoad()

  
    }
    
 
    
    @IBAction func signUpTapped(_ sender: UIButton) {
       
        
        guard let savedFirstName = firstName.text,
            let savedLastName = lastName.text,
            let savedUserID = userID.text,
            let savedInitialPW = initialPassword.text,
            let savedretypePW = retypePassword.text,
            let savedUserEmail = userEmail.text
            else {return}
        
        let newUser = UserInfo(id: savedUserID, pw: savedInitialPW, email: savedUserEmail, firstName: savedFirstName, lastName: savedLastName)
        
        
        // Mark: make the data that put into a dictionary.
//        let userData [String:[:]] = []
        
        if newUser.pw != savedretypePW {
            
            // mark: make a alertView when the password does not match
            let alertController = UIAlertController(title: "Password Does not Match", message: message, preferredStyle: .alert)
            let dismiss = UIAlertAction(title: "Ok", style: .default, handler: nil)
           
            print(savedInitialPW)
            print(savedretypePW)
            
            
            alertController.addAction(dismiss)
            present(alertController, animated: true)
            
        } else {
            performSegue(withIdentifier: segueIdentifierForSignUp, sender: sender)
        }
        
        
    }
    
 
}
