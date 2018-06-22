//
//  SMResultViewController.swift
//  No More Tension
//
//  Created by Anshul Dhull on 19/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import UIKit

class SMResultViewController: UIViewController {
    @IBOutlet weak var meterImg: UIImageView!
    @IBOutlet weak var smresLabel: UILabel!
    @IBOutlet weak var scoreLabel: UILabel!
    var data = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        
        scoreLabel.text = "\(data)"
        
        if data <= 0 || data <= 2{
            meterImg.image = UIImage(named: "meter1")
        }
        else if data > 2 || data <= 4 {
            meterImg.image = UIImage(named: "meter2")
        }
        else if data > 4 || data <= 6 {
            meterImg.image = UIImage(named: "meter3")
        }
        else if data > 6 || data <= 8 {
            meterImg.image = UIImage(named: "meter4")
        }
        else if data > 8 || data <= 10 {
            meterImg.image = UIImage(named: "meter5")
        }
        else {
            print("wrong case")
        }
        

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

}
