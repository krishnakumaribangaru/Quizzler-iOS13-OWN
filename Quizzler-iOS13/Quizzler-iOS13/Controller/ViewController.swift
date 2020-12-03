//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Angela Yu on 12/07/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var progressBar: UIProgressView!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    var quizBrain = QuizBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    @IBAction func buttonPressed(_ sender: UIButton) {
        let userAnswer = sender.currentTitle!
        let userGotRight = quizBrain.checkAnswer(userAnswer: userAnswer)
        
        if userGotRight {
            sender.backgroundColor = UIColor.green
        }
        else{
            sender.backgroundColor = UIColor.red
        }
        quizBrain.nextQuestion()
        
        Timer.scheduledTimer(timeInterval: 0.9, target:self, selector:#selector(updateUI), userInfo: nil, repeats: false)
    }
    @objc func updateUI(){
        questionLabel.text = quizBrain.getQuestionText()
        scoreLabel.text = "score: \(quizBrain.getScore())"
        trueButton.backgroundColor = UIColor.clear
        falseButton.backgroundColor = UIColor.clear
        progressBar.progress = quizBrain.getProcess()
    }
}


