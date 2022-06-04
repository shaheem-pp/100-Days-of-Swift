//
//  Question.swift
//  PotterHead
//
//  Created by Shaheem PP on 04/06/22.
//

import Foundation

struct Question{
    
    
    let quizQstn = [
        ["Dumbledore was a Hedmaster of Hogwarts", "True"],
        ["Harry Potter is a Quidditch Seeker", "True"],
        ["Lord Voldmort have 5 Horcruxes", "False"],
        ["Dursleys lived in Pivet Drive", "True"]
    ]
    
    var qNum = 0
    var score = 0
    
    mutating func nextQstn(){
        if qNum + 1 <= quizQstn.count {
            qNum = qNum + 1
        }
    }
    
    func getQuestion() -> String{
        if qNum + 1 <= quizQstn.count{
            return quizQstn[qNum][0]
        }
        return "Game Over\n You've scored \(score) out of \(qNum) qstns"
    }
    
    mutating func checkAnswer(userAnswer : String){
        if qNum + 1 <= quizQstn.count{
            if userAnswer == quizQstn[qNum][1] {
                score = score + 1
            }
        }
    }
    
    func showScore() -> Int {
        return score
    }
    
    func updateProgress() -> Float{
        return Float(qNum)/Float(quizQstn.count)
    }
    
}
