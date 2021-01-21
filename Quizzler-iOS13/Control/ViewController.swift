//
//  ViewController.swift
//  Quizzler-iOS13
//
//  Created by Yoonsoo Park on 01/19/2021.
//  Copyright © 2019 YOParista. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var quizzProgressBar: UIProgressView!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    
    let quizDic = [
        "Yoonsoo is Korean." : "True", "Lacy is Korean." : "False", "Lacy is Dori." : "True", "Lacy loves animals." : "True"]
    var quiz : Array<String> = []
    var score = 0
    var currentQuizNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        for key in quizDic.keys {
            quiz.append(key);
        }
        questionLabel.text = quiz[currentQuizNumber];
        quizzProgressBar.progress = progressCal(0)
    }

    @IBAction func answerQuestion(_ sender: UIButton) {
        
        //check the answer.
        if quizDic[quiz[currentQuizNumber]] == sender.titleLabel?.text {
            score += 1
        }
        
        currentQuizNumber += 1
        quizzProgressBar.progress = progressCal(currentQuizNumber)
        
        if(currentQuizNumber != quiz.count - 1)
        {
            questionLabel.text = quiz[currentQuizNumber];
        }
        else
        {
            questionLabel.text = "Your score is ... \(score)"
            trueButton.isHidden = true
            falseButton.isHidden = true;
        }
    }
    
    func progressCal(_ cur : Int) -> Float {
        return Float(cur + 1)/Float(quiz.count)
    }
    
}

