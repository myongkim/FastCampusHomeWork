//
//  ViewController.swift
//  LetsWork
//
//  Created by Isaac Kim on 27/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

struct LoginInfo {
    var id: String
    var pw: String
    
}



class LogInViewController: UIViewController {

    
    @IBOutlet weak var loginIDText: UITextField!
    @IBOutlet weak var logInPasswordText: UITextField!
    let segueIdentifierForLogIn = "logIn"
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    // Mark: Perform Login button, if criteria has been met
    @IBAction func buttonDidTapLogIn(_ sender: UIButton) {
        guard let logInID = loginIDText.text,
              let logInPW = logInPasswordText.text
            else { return }
        
        let logInInfo = LoginInfo(id: logInID, pw: logInPW)
       
        
        if logInID == "myongkim" && logInPW == "m0000" {
            
            performSegue(withIdentifier: segueIdentifierForLogIn, sender: sender)
            
            
        } else {
            print(logInInfo)
        }
        
        
        
    }
    // Mark: SignUP Page
    @IBAction func buttonDidTapSignUP(_ sender: UIButton){
    }
    
    // Mark: unwind from Signup Page to login Page
    @IBAction func unwindToLogInViewController(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
}

