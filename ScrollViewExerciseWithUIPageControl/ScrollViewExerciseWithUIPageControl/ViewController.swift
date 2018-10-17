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
    @IBOutlet weak var view1: UIView!
    @IBOutlet weak var view2: UIView!
    @IBOutlet weak var view3: UIView!
    @IBOutlet weak var view4: UIView!
    @IBOutlet weak var pageControl: UIPageControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        scrollView.delegate = self
        

    }

    
    


    
    
    
}
extension ViewController: UIScrollViewDelegate {
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
            //   pageControl.currentPage = Int(scrollView.contentOffset.x / view.frame.width)
        pageControl.currentPage = Int(scrollView.contentOffset.x / view.frame.width)
        print(scrollView)
        
        
    }
        
}
