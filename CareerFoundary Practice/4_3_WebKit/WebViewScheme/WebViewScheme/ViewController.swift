//
//  ViewController.swift
//  WebViewScheme
//
//  Created by Isaac Kim on 10/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func facebookOpen(_ sender: UIButton) {
        print("\n===============facebookOpen========================\n")
        guard let facebookAddress = URL(string: "http://facebook.com") else { return }
        
        if UIApplication.shared.canOpenURL(facebookAddress){
            UIApplication.shared.open(facebookAddress)
            
        }
    }
    
    @IBAction func googleMapOpen(_ sender: UIButton) {
        guard let googleMap = URL(string: "http://maps.google.com/") else { return }
        
        if UIApplication.shared.canOpenURL(googleMap) {
            UIApplication.shared.open(googleMap)
            
        }
        
    }
    
    @IBAction func yelpOpen(_ sender: UIButton) {
        guard let yelp = URL(string: "http://yelp.com") else { return }
    
        if UIApplication.shared.canOpenURL(yelp) {
            UIApplication.shared.open(yelp)
        }
    
    }
    
   
}

