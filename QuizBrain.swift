//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by MoSaiedZ on 30/04/2025.
//  Copyright © 2025 The App Brewery. All rights reserved.
//

import Foundation

struct QuizBrain {
    let quiz = [Question(T: "A slug's blood is green.", A: "True"),
                Question(T: "Approximately one quarter of human bones are in the feet.", A: "True"),
                Question(T: "The total surface area of two human lungs is approximately 70 square metres.", A: "True"),
                Question(T: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", A: "True"),
                Question(T: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", A: "False"),
                Question(T: "It is illegal to pee in the Ocean in Portugal.", A: "True"),
                Question(T: "You can lead a cow down stairs but not up stairs.", A: "False"),
                Question(T: "Google was originally called 'Backrub'.", A: "True"),
                Question(T: "Buzz Aldrin's mother's maiden name was 'Moon'.", A: "True"),
                Question(T: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", A: "False"),
                Question(T: "No piece of square dry paper can be folded in half more than 7 times.", A: "False"),
                Question(T: "Chocolate affects a dog's heart and nervous system; a few ounces are enough to kill a small dog.", A: "True")
                
    ]
    
    
    var questionNumber = 0
    var score = 0
    mutating func checkAnswer(_ userAnswer: String)->Bool{
        if userAnswer == quiz[questionNumber].Answers {
            return true
            
        }else {
            score += 1
            return false
        }
        
        
    }
        
        
        func getQuestionText()-> String {
            return quiz[questionNumber].Text
            
        }
        
        
        func getProgress()->Float {
            
            return Float(questionNumber + 1)/Float(quiz.count)
        }
    mutating func contiune(){
        if questionNumber + 1 == quiz.count {
            self.questionNumber = 0
            score = 0
        }else {
    self.questionNumber += 1
          
            }
    }
    func getscore()-> Int {
        return score
    }
        
        
    
}
