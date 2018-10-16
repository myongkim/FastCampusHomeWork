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
        
        
        
        
//        pageControlfunc()
        
    }
    
    

    func pageControlfunc() {
        let currentPage = pageControl.currentPage
        
        var corrdinate = Coordinate.init(x: 1, y: 1)
//        corrdinate.x =
        
        
        
        
        
    }
 
}

class Coordinate{
    
    var x: CGFloat
    var y: CGFloat
    
    init(x: CGFloat, y:CGFloat){
        self.x = x
        self.y = y
        
    }
    
    
}

extension ViewController: UIScrollViewDelegate {
    
    
    
}
