//
//  TouchViewController.swift
//  UIGuestureRecognizer
//
//  Created by Isaac Kim on 01/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class TouchViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    var isHoldingImage = false
    var lastTouchPoint = CGPoint.zero
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = imageView.frame.width / 2
        // if the image is greater than the layer, it will cut the image accordingly
        imageView.layer.masksToBounds = true
   }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        super.touchesBegan(touches, with:event)
        print("Touch Began")
        
        guard let touch = touches.first else {return}
        
        let touchPoint = touch.location(in: touch.view)
        
     
        
        
        if imageView.frame.contains(touchPoint) {
            imageView.image = UIImage(named: "cat2")
            isHoldingImage = true
            lastTouchPoint = touchPoint
            
        }
    }

   
    override func touchesMoved(_ touches: Set<UITouch>, with event:UIEvent?) {
        super.touchesMoved(touches, with: event)
        print("touches Moved")
        
        guard isHoldingImage, let touch = touches.first else { return }
        let touchPoint = touch.location(in: touch.view)

            imageView.center.x += (touchPoint.x - lastTouchPoint.x) //distance value
            imageView.center.y += (touchPoint.y - lastTouchPoint.y) // distance value
            lastTouchPoint = touchPoint
        


        
    }
    override func touchesEnded(_ touches: Set<UITouch>, with event:UIEvent?) {
        super.touchesEnded(touches, with: event)
        print("touches Ended")
        guard isHoldingImage else { return }
        
        isHoldingImage = false
        imageView.image = UIImage(named: "cat1")
        
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event:UIEvent?) {
        super.touchesCancelled(touches, with: event)
        guard isHoldingImage else { return }
        
        isHoldingImage = false
        imageView.image = UIImage(named: "cat1")
    }
    

}

