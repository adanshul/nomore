//
//  Question.swift
//  No More Tension
//
//  Created by Anshul Dhull on 18/06/18.
//  Copyright © 2018 Anshul Dhull. All rights reserved.
//

import Foundation

class Question {
    
    let questionText : String 
    let answer : Bool
    
    init(text: String,correctAnswer: Bool) {
        questionText = text
        answer = correctAnswer
    }
    
}
