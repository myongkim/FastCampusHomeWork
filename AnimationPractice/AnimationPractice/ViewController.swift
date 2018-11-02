//
//  ViewController.swift
//  AnimationPractice
//
//  Created by Isaac Kim on 02/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit




class ViewController: UIViewController {
    
    
    struct Time {
        static let short = 0.3
        static let middle = 0.65
        static let long = 1.0
    }
    
    private struct UI {
        static let menuCount = 5
        static let menuSize: CGFloat = 50
        static let distance: CGFloat = 130
        static let minScale: CGFloat = 0.2
        
    }

    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var button0: UIButton!
    
    var button1Cordinate: CGPoint!
    var button2Cordinate: CGPoint!
    var button3Cordinate: CGPoint!
    var button4Cordinate: CGPoint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    button1Cordinate = button1.center
    button2Cordinate = button2.center
    button3Cordinate = button3.center
    button4Cordinate = button4.center
        
        
    button0.backgroundColor = #colorLiteral(red: 0.3098039329, green: 0.01568627544, blue: 0.1294117719, alpha: 1)
    button0.layer.cornerRadius = button0.frame.width / 2
    
    button1.backgroundColor = #colorLiteral(red: 0.4745098054, green: 0.8392156959, blue: 0.9764705896, alpha: 1)
    button1.layer.cornerRadius = button1.frame.width / 2
    
    button2.backgroundColor = #colorLiteral(red: 0.3411764801, green: 0.6235294342, blue: 0.1686274558, alpha: 1)
    button2.layer.cornerRadius = button2.frame.width / 2
    
    button3.backgroundColor = #colorLiteral(red: 0.9467055202, green: 0.692401018, blue: 0.7270359759, alpha: 1)
    button3.layer.cornerRadius = button3.frame.width / 2
    
    button4.backgroundColor = #colorLiteral(red: 0.3080131023, green: 0.3098039329, blue: 0.1130380241, alpha: 1)
    button4.layer.cornerRadius = button4.frame.width / 2
        
    
    button1.center = button0.center
    button2.center = button0.center
    button3.center = button0.center
    button4.center = button0.center
       
    }

    @IBAction func animate(_ sender: UIButton) {
        
        if button0.center == button1.center {
            UIView.animate(withDuration: 0.3) {
                    self.button1.center = self.button1Cordinate
                    self.button2.center = self.button2Cordinate
                    self.button3.center = self.button3Cordinate
                    self.button4.center = self.button4Cordinate
            }
        } else {
                UIView.animate(withDuration: 0.3, animations: {
                        self.button1.center = self.button0.center
                        self.button2.center = self.button0.center
                        self.button3.center = self.button0.center
                        self.button4.center = self.button0.center
                })
                
            }
    }
    
    

}

