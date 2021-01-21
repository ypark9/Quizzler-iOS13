//
//  QuizBrain.swift
//  Quizzler-iOS13
//
//  Created by Yoonsoo Park on 1/21/21.
//  Copyright © 2021 The App Brewery. All rights reserved.
//

import Foundation

class QuizBrain {
    let quizDic = [
        "Yoonsoo is Korean." : "True", "Lacy is Korean." : "False", "Lacy is Dori." : "True", "Lacy loves animals." : "True"]
    var quiz : Array<String> = []
    var score = 0
    var currentQuizNumber = 0
    
    init() {
        for key in quizDic.keys {
            quiz.append(key);
        }
    }
    
    func progressCal(_ cur : Int) -> Float {
        return Float(cur + 1)/Float(quiz.count)
    }
    
    func getScore() ->Int {
        return score
    }
}

