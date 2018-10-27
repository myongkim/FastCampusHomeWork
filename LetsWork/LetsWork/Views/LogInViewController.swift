//
//  ViewController.swift
//  LetsWork
//
//  Created by Isaac Kim on 27/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

struct LogIn {
    var id: String
    var pw: String
 
//    init(id: String, pw: String) {
//        self.id = id
//        self.pw = pw
//    }
}

class LogInViewController: UIViewController {

    
    @IBOutlet weak var loginIDText: UITextField!
    @IBOutlet weak var logInPasswordText: UITextField!
  
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func buttonDidTapLogIn(_ sender: UIButton) {
        guard let logInID = loginIDText.text else { return }
        guard let logInPW = logInPasswordText.text else { return }
        
        let logInInfo = LogIn(id: logInID, pw: logInPW)
        print(logInInfo)
        
        
        
        
        
    }
    
    @IBAction func buttonDidTapSignUP(_ sender: UIButton) {
        
    }
    
    @IBAction func unwindToLogInViewController(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
        
    }
}

