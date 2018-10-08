//
//  ViewController.swift
//  SeguePractice
//
//  Created by Isaac Kim on 07/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var displayOne: UILabel!
//    var displayNumber = 0
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //@IBAction func unwindToViewController(_ sender: UIStoryboardSegue) {
    //    guard let sourceVC = sender.source as? SecondViewController else { return }
    //    countLabel.text = "\(sourceVC.data + 10)"
    //}
    //}

    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        
        guard let secondVC = segue.destination as? SecondViewController else { return }
        
        secondVC.displayNumber2 = Int(secondVC.displayNumber2) + 1
        
      
        
        
    }
    
    // since we already used the segue with the direct pulling, we don't need performSegue at this time
//    override func performSegue(withIdentifier identifier: String, sender: Any?) {
//        super.performSegue(withIdentifier: identifier, sender: sender)
//
//
//    }
    
    
    @IBAction func unwindToViewController(_ sender: UIStoryboardSegue) {
        guard let secondVC = sender.source as? SecondViewController else { return }
        
        displayOne.text = "\(secondVC.displayNumber2 + 10)"
        print(displayOne.text)
      
        
        
    }
    
}




//
////  override func shouldPerformSegue(withIdentifier identifier: String, sender: Any?) -> Bool {
////    super.shouldPerformSegue(withIdentifier: identifier, sender: sender)
////    return Int(countLabel.text!)! < 50 ? true : false
////  }
//
//// MARK: Unwind
//


