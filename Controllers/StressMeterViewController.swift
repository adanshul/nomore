//
//  StressMeterViewController.swift
//  No More Tension
//
//  Created by Anshul Dhull on 11/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import UIKit

class StressMeterViewController: UIViewController {
    
    let allQuestions = QuestionBank()
    var pickedAnswer : Bool = false
    var questionNumber : Int = 0
    var score : Int = 0
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressLabel: UILabel!
    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var scoreLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       nextQuestion()

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func answerPressed(_ sender: Any) {
        
        if (sender as AnyObject).tag == 1{
            pickedAnswer = true
        }
        else if (sender as AnyObject).tag == 2{
            pickedAnswer = false
        }
        checkAnswer()
        questionNumber = questionNumber + 1
        nextQuestion()
    }
        
        func updateUI() {
            
            scoreLabel.text = "Score: \(score)"
            progressLabel.text = "\(questionNumber + 1) / 10"
            progressBar.frame.size.width = (view.frame.size.width / 10) * CGFloat(questionNumber + 1)
            
        }
        
        func nextQuestion() {
            
            if questionNumber <= 9 {
                  questionLabel.text = allQuestions.list[questionNumber].questionText
                updateUI()
            }
            else {
               // here i need to perform the segue for the result.
              performSegue(withIdentifier: "goToSmresult", sender: self)
            }
        }
        
        func checkAnswer() {
            
            let correctAnswer = allQuestions.list[questionNumber].answer
            if correctAnswer == pickedAnswer{
                
                ProgressHUD.showSuccess("Great !! ")
                
                print("you got it")
                score = score + 1
            }
            else {
                ProgressHUD.showError("That's not right !")
                print("wrong")
            }
         
            
        }
    
    func startOver(){
        score = 0
        questionNumber = 0
        nextQuestion()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "goToSmresult"{
            
            let secondVC = segue.destination as! SMResultViewController
            secondVC.data = score
        }
    }
        
        
    }
    
    


