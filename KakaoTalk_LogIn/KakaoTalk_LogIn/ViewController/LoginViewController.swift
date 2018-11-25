//
//  ViewController.swift
//  KakaoTalk_LogIn
//
//  Created by Isaac Kim on 25/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class LoginViewController: UIViewController {

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

    @IBAction func signInButtonDidTap(_ sender: Any) {
        guard let session = KOSession.shared() else { return }
        
        print("hello")
        // close old session
        session.isOpen() ? session.close() : ()
        
        session.open(completionHandler: { (error) in
            if !session.isOpen() {
                // 에러코드는 KOErrorCode 참고
                if let error = error as NSError? {
                    switch error.code {
                    case Int(KOErrorCancelled.rawValue):
                        print("Canceled")
                    default:
                        print(error.localizedDescription)
                    }
                }
            } else {
                print("Login Success")
            }
            //        })
        }, authTypes: [NSNumber(value: KOAuthType.talk.rawValue)])
        /***************************
         KoAuthType - 카카오계정 로그인시의 인증 타입
         KoAuthTypeTalk (2) - 카카오톡으로 간편 인증
         KOAuthTypesStory (4) - 카카오스토리로 간편 인증
         KOAuthTypeAccount (8) - 카카오계정으로 직접 id, password로 인증
         **********************************/
        
    }
    
}

