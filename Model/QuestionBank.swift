//
//  QuestionBank.swift
//  No More Tension
//
//  Created by Anshul Dhull on 18/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list = [Question]()
    
    init() {
        
     
        
        list.append(Question(text: "Do you keep your feelings with yourself or find it difficult to share your feelings?", correctAnswer: false))
        list.append(Question(text: "Does your personal or social life get affected adversely by your work/career?", correctAnswer: false))
        list.append(Question(text: "Do you drink or smoke to ease your problem?", correctAnswer: false))
        list.append(Question(text: "Do you have significant difficulty in your sleep?", correctAnswer: false))
        list.append(Question(text: "Do you bite your nails, get irritated , shake yor legs and experience headaches whenever you face any difficulty?", correctAnswer: false))
        list.append(Question(text: "Do you fell that making decisions(Big or Small) is difficult?", correctAnswer: false))
        list.append(Question(text: "Do you find it difficult to find time for yourself to relax or exercise?", correctAnswer: false))
        list.append(Question(text: "Do you often worry about your future?", correctAnswer: false))
        list.append(Question(text: "Do you feel inferior to others", correctAnswer: false))
        list.append(Question(text: "Do you become irritated if things don't happen your way?", correctAnswer: false))
    }
    
}
