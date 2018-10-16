//
//  ViewController.swift
//  ScrollViewExerciseWithUIPageControl
//
//  Created by Isaac Kim on 16/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        
    }

 
}

extension ViewController: UIScrollViewDelegate {
    
    
    
}
