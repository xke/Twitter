//
//  LoginViewController.swift
//  Twitter
//
//  Created by Xian on 10/3/15.
//  Copyright © 2015 swifterlabs. All rights reserved.
//

import UIKit


class LoginViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onLogin(sender: AnyObject) {

        TwitterClient.sharedInstance.loginWithCompletion() {
            (user: User?, error: NSError?) in
            if user != nil {
                self.performSegueWithIdentifier("loginSegue", sender: self)
            } else {
                // Handle login error
            }
        }
      
    }
    
}

