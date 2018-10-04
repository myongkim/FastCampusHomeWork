//
//  ViewController.swift
//  10_4_practice_coding
//
//  Created by Isaac Kim on 04/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue) {
    
    }
    
    @IBAction func alertControl(_ sender: UIButton) {
    
        let alertButtonController = UIAlertController.init(title: "Alert", message: "message", preferredStyle: .alert)
        
        //alertcontroller variable
        let yes = UIAlertAction.init(title: "Yes", style: .default, handler: nil)
//        let no = UIAlertAction(title: "Cancel", style: .cancel) { _ in
//            guard let secondViewController = as? SecondViewController
//        }
        
        
        // alert actions
        alertButtonController.addAction(yes)
       // alertButtonController.addAction(no)
        alertButtonController.addTextField { word in
            word.placeholder = "this is the placeholder."
        }
        
        // execution of the alertcontroller
        present(alertButtonController, animated: true)
        
    
    
    }
    
    
   
}

