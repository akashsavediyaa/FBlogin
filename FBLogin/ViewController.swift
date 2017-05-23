//
//  ViewController.swift
//  FBLogin
//
//  Created by akash savediya on 15/05/17.
//  Copyright © 2017 akash savediya. All rights reserved.
//

import UIKit
import FBSDKLoginKit


class ViewController: UIViewController , FBSDKLoginButtonDelegate {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let loginButton = FBSDKLoginButton()
        
        view.addSubview(loginButton)
        loginButton.frame = CGRect(x: 16, y: 50, width: view.frame.width - 32, height: 50)
        loginButton.delegate = self

    
    }
    func loginButtonDidLogOut(_ loginButton: FBSDKLoginButton!) {
        print("Did logout of facebook")
    }
    
    func loginButton(_ loginButton: FBSDKLoginButton!, didCompleteWith result: FBSDKLoginManagerLoginResult!, error: Error!) {
        if error != nil {
            print(error)
            return
        }
        print("Successfully logged in")
    }




}

