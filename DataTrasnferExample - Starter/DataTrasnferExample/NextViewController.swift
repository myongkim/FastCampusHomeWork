//
//  DisplayViewController.swift
//  DataTrasnferExample
//
//  Created by giftbot on 03/10/2018.
//  Copyright © 2018 giftbot. All rights reserved.
//

import UIKit

final class NextViewController: UIViewController {
  
  @IBOutlet weak var nextViewControllerDisplay: UILabel!
    var displayText = ""
    
  override func viewDidLoad() {
    super.viewDidLoad()
 
//    nextViewControllerDisplay.text = displayText
    nextViewControllerDisplay.text = UserDefaults.standard.string(forKey: "StoredText")
    
  }
}
