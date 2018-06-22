//
//  LoginViewController.swift
//  No More Tension
//
//  Created by Anshul Dhull on 08/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class LoginViewController: UIViewController {

    @IBOutlet weak var emailfield: UITextField!
    
    @IBOutlet weak var passwordField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func loginButtonpress(_ sender: Any) {
        SVProgressHUD.show()
        
        Auth.auth().signIn(withEmail: emailfield.text!, password: passwordField.text!) { (user, error) in
            if error != nil {
                SVProgressHUD.dismiss()
                print("Login successful")
            }
            else{
            self.performSegue(withIdentifier: "loginComplete", sender: self)
        }
        
    }
}
}
