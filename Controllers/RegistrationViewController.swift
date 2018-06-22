//
//  RegistrationViewController.swift
//  No More Tension
//
//  Created by Anshul Dhull on 08/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import UIKit
import Firebase
import SVProgressHUD

class RegistrationViewController: UIViewController {
    @IBOutlet weak var emailTextfield: UITextField!
    
    @IBOutlet weak var passwordTextfield: UITextField!
    
    
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
    @IBAction func registrationButtonPress(_ sender: Any) {
        
        Auth.auth().createUser(withEmail: emailTextfield.text!, password: passwordTextfield.text!) {
            (user, error) in
            if error != nil{
                print(error!)
            }
            else{ //success
                SVProgressHUD.dismiss()
                print("Registration successful")
                self.performSegue(withIdentifier: "registrationComplete", sender: self)
            }
            
        }
    }
    
}
