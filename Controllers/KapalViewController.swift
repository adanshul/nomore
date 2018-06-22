//
//  KapalViewController.swift
//  No More Tension
//
//  Created by Anshul Dhull on 18/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import UIKit

class KapalViewController: UIViewController {
    @IBOutlet weak var kapLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        kapLabel.layer.borderWidth = 5.0
        kapLabel.layer.cornerRadius = 8

        kapLabel.layer.borderColor = UIColor.white.cgColor
        
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
