//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var QuestionLabel: UILabel!
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    
    @IBOutlet weak var trueButton: UIButton!
    
    @IBOutlet weak var falseButton: UIButton!
    
   var quizBrain = QuizBrain()
   
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        updateUI()
    }
    
    @IBAction func answerButtonPressed(_ sender: UIButton) {
        
        let userAnswer = sender.currentTitle!
        let getItRight = quizBrain.checkAnswer(userAnswer)
        
        updateUI()
        if getItRight {
            sender.backgroundColor = UIColor.red
        }else {
            sender.backgroundColor = UIColor.green
            
            
        }
       
        
        quizBrain.contiune()
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateUI), userInfo: nil, repeats: true)
        
  
       
    }
    
    
    @objc func updateUI() {
        QuestionLabel.text = quizBrain.getQuestionText()
        progressBar.progress = quizBrain.getProgress()
        scoreLabel.text = "Score:\(quizBrain.getscore())"
        
        
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
       
    }
    
    
    
    
    
}

