//
//  GestureViewController.swift
//  UIGuestureRecognizer
//
//  Created by Isaac Kim on 01/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class GestureViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var isQuadruple = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.layer.cornerRadius = imageView.frame.width / 2
        imageView.layer.masksToBounds = true
        

    }
    
    @IBAction private func handleTapGuesture(_ sender: UITapGestureRecognizer) {
        
        if !isQuadruple {
            imageView.transform = imageView.transform.scaledBy(x: 2, y: 2)
        } else {
            imageView.transform = CGAffineTransform.identity
        }
        isQuadruple = !isQuadruple
    }
    
    @IBAction private func handleRotationGesture(_ sender: UIRotationGestureRecognizer) {
        let rotation = sender.rotation
        imageView.transform = imageView.transform.rotated(by: rotation)
        sender.rotation = 0
        
    }
    // 왼쪽으로 swipe 하면 cat1 이미지를 띄우고
    // 오른쪽으로 swipe 하면 cat2이미지를 띄우기

    
    @IBAction private func swipe(_ sender: UISwipeGestureRecognizer) {
    
        print("SwipeGesture: ", sender)
       
        if sender.direction == .left {
            imageView.image = UIImage(named: "cat1")
        } else {
            imageView.image = UIImage(named: "cat2")
        }
        
        
//        if sender.direction == rightDirection {
//            imageView.image = UIImage(named: "cat2")
//        } else {
//            imageView.image = UIImage(named: "cat1")
//
//        }
    }
    
// static allows to access the object directly
//    let c = 4
//    static let b = 3
// meta type study
    
    
    
}
