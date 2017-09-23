//
//  FirstViewController.swift
//  InstagramCloneParse
//
//  Created by Gülşah AVCI on 19.09.2017.
//  Copyright © 2017 glsh. All rights reserved.
//

import UIKit
import Parse

class FeedVC: UIViewController {
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    @IBAction func logoutClicked(_ sender: Any) {
        
        PFUser.logOutInBackground { (error) in
            if error != nil {
                let alert = UIAlertController(title: "Error", message: "error?.localizedDescription", preferredStyle: UIAlertControllerStyle.alert)
                
                let okButton = UIAlertAction(title: "OK", style: UIAlertActionStyle.cancel, handler: nil)
                alert.addAction(okButton)
                self.present(alert, animated: true, completion: nil)
            } else {
                
                UserDefaults.standard.removeObject(forKey: "username")
                UserDefaults.standard.synchronize()
                
                let signIn = self.storyboard?.instantiateViewController(withIdentifier: "signIn") as! signInVC
                let delegate: AppDelegate = UIApplication.shared.delegate as! AppDelegate
                delegate.window?.rootViewController = signIn
                delegate.rememberUser()
            }
        }
        
        
    }
        
    
}

