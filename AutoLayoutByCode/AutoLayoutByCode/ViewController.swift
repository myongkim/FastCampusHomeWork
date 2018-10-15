//
//  ViewController.swift
//  AutoLayoutByCode
//
//  Created by Isaac Kim on 15/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {

    private let firstView = UIView()
    private let secondView = UIView()
   
    override func viewDidLoad() {
        super.viewDidLoad()
       
        firstView.backgroundColor = .yellow
        secondView.backgroundColor = .brown
        view.addSubview(firstView)
        view.addSubview(secondView)
        
//        myAutoLayout()
        autoLayoutWithAnchors()
        
        
    }
    
//    private func myAutoLayout() {
//        firstView.frame = CGRect(x: 20, y: 20, width: view.bounds.width - 50 , height: view.bounds.height - 40)
//        secondView.frame = CGRect(x: 120, y: 20, width: view.bounds.width - 50, height: view.bounds.height - 40)
//
//        firstView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
//        secondView.autoresizingMask = [.flexibleWidth, .flexibleHeight]
        
//    }
    
//    override func viewWillLayoutSubviews() {
//        super.viewWillLayoutSubviews()
//
//        let margin: CGFloat = 20
//        let safeLayoutInsets = view.safeAreaInsets
//        let horizontalInsets = safeLayoutInsets.left + safeLayoutInsets.right
//
//        let yOffset = safeLayoutInsets.top + margin
//        let viewWidth = (view.bounds.midX - margin - 5 - (horizontalInsets / 2 ))
//
//        firstView.frame = CGRect (
//            x: safeLayoutInsets.left + margin,
//            y: yOffset,
//            width: viewWidth,
//            height: view.bounds.height - yOffset - (safeLayoutInsets.bottom + margin))
//
//        secondView.frame = CGRect(x: firstView.frame.maxX + 10, y: yOffset, width: firstView.bounds.width, height: firstView.bounds.height)
//    }

    private func autoLayoutWithAnchors() {
        
        firstView.translatesAutoresizingMaskIntoConstraints = false
        firstView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        firstView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20).isActive = true
        firstView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        firstView.trailingAnchor.constraint(equalTo: secondView.leadingAnchor, constant: -10).isActive = true
        
        firstView.widthAnchor.constraint(equalTo: secondView.widthAnchor, multiplier: 1).isActive = true
        
        secondView.translatesAutoresizingMaskIntoConstraints = false
        secondView.topAnchor.constraint(equalTo: view.topAnchor, constant: 40).isActive = true
        // it does not need to have below code since firstView trailingAnchor alredy has a constraint with it.
//        secondView.leadingAnchor.constraint(equalTo: firstView.trailingAnchor).isActive = true
        secondView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -40).isActive = true
        secondView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20).isActive = true
        
        
        
    }
    
}




