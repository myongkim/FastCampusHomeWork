//
//  ViewController.swift
//  practiceFortheAutoLayout
//
//  Created by Isaac Kim on 16/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private let blueBox = UIView()
    private let redBox = UIView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
    blueBox.backgroundColor = .black
    blueBox.frame = CGRect(x: 10, y: 50, width: 100, height: 100)
    view.addSubview(blueBox)
        
    redBox.backgroundColor = .red
    view.addSubview(redBox)
    redBox.frame = CGRect(x: 120, y: 50, width:100 , height: 100)
        
//    autoLayout()
        
    }

    private func autoLayout() {
        blueBox.translatesAutoresizingMaskIntoConstraints = false
        blueBox.topAnchor.constraint(equalTo: view.topAnchor, constant: 50).isActive = true
        blueBox.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        blueBox.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        blueBox.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        redBox.translatesAutoresizingMaskIntoConstraints = false
        redBox.topAnchor.constraint(equalTo: blueBox.topAnchor, constant: 50).isActive = true
        redBox.leadingAnchor.constraint(equalTo: blueBox.leadingAnchor, constant: 20).isActive = true
        redBox.bottomAnchor.constraint(equalTo: blueBox.bottomAnchor, constant: -50).isActive = true
        redBox.trailingAnchor.constraint(equalTo: blueBox.trailingAnchor, constant: -20).isActive = true
        
        
        
    }

}

