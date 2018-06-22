//
//  BhastrikaViewController.swift
//  No More Tension
//
//  Created by Anshul Dhull on 18/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import UIKit

class BhastrikaViewController: UIViewController {

    @IBOutlet weak var bhasLabel: UILabel!
    @IBOutlet weak var img1: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()

        bhasLabel.layer.borderWidth = 5.0
        bhasLabel.layer.borderColor = UIColor.white.cgColor
        bhasLabel.layer.cornerRadius = 8
        
        img1.layer.borderWidth = 2.0
        img1.layer.borderColor = UIColor.white.cgColor
        img1.clipsToBounds = true
        
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

}
