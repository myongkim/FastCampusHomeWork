//
//  ViewController.swift
//  URLScheme_practice
//
//  Created by Isaac Kim on 31/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func setting(_ sender: UIBarButtonItem) {
      print("\n===============setting========================\n")
        guard let settingURL = URL(string: UIApplication.openSettingsURLString),
            UIApplication.shared.canOpenURL(settingURL)
            
            else { return }
        
                if #available(iOS 10.0, *) {
                UIApplication.shared.open(settingURL) { (success) in
                    print("isOpenSucess :", success)
                }
            } else {
                UIApplication.shared.openURL(settingURL)
            }
        
        // use above code since we need to check for both iOS 10 and more.
//        UIApplication.shared.openURL(settingURL)
        
        
    }
    @IBAction func mail(_ sender: UIBarButtonItem) {
        print("\n===============OpenMail========================\n")
//        guard let mailURL = URL(string: "mailto://myong328@gmail.com") else { return }
//            UIApplication.shared.open(mailURL)
//
        let mailURL = URL(string: "mailto://myong328@gmail.com")!
        
        if UIApplication.shared.canOpenURL(mailURL) {
            UIApplication.shared.open(mailURL)
        }
        
    }
    
    @IBAction func sendMessageSMS(_ sender: UIBarButtonItem) {
        print("\n===============sendMessageSMS========================\n")
        
        // mark: with the guard let binding to solve the
        guard let sendSMS = URL(string: "sms://714-515-0000") else { return }
        
        UIApplication.shared.open(sendSMS)
        
        
    }
    @IBAction func opengitHub(_ sender: UIBarButtonItem) {
        print("\n===============openingGithub========================\n")
        
       let openGithub = URL(string: "http://github.com")!
        
        if UIApplication.shared.canOpenURL(openGithub) {
            UIApplication.shared.open(openGithub)
        }
    }
    
    @IBAction func openFacebookApp(_ sender: UIBarButtonItem) {
        guard let openFB = URL(string: "fb://") else { return }
        
        UIApplication.shared.open(openFB)
        
        
    }
    @IBAction func openMYApp(_ sender: UIBarButtonItem) {
        let openMyAPP = URL(string: "myAPP://")!
        
        if UIApplication.shared.canOpenURL(openMyAPP) {
        UIApplication.shared.open(openMyAPP)
        }
        
    }
    
    
}

/********************************
 [ 참고 Scheme ]
 전화 - tel://010-1234-5678"
 페이스타임 - facetime://010-1234-5678"
 애플맵 검색 텍스트 - http://maps.apple.com/?q=searchText
 애플맵 (위경도 지정) - http://maps.apple.com/?ll=latitude,longitude
 앱스토어 (구글맵) - https://itunes.apple.com/kr/app/google-maps/id585027354?mt=8
 유투브 - https://www.youtube.com/watch?v=BzYnNdJhZQw
 
 
 third party APP needs below code in plist
 <key>LSApplicationQueriesSchemes</key>
 <array>
 <string>myApp</string>
 </array>
 
 myAPP in homework file is the one is linked with this application
 
 
 *********************************/


