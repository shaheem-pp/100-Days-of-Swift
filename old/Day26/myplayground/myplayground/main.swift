//
//  main.swift
//  myplayground
//
//  Created by Shaheem PP on 04/06/22.
//
//

import Foundation

struct Question {
    var q: String
    var a: String

    init(question: String, answer: String) {
        q = question
        a = answer
    }
}

struct Quiz {

    var questions = [
        Question(question: "Naruto is a Ninja", answer: "True"),
        Question(question: "Naruto is a Ninja", answer: "True"),
        Question(question: "Naruto is a Ninja", answer: "True"),
        Question(question: "Naruto is a Ninja", answer: "True"),
        Question(question: "Naruto is a Ninja", answer: "True"),
        Question(question: "Naruto is a Ninja", answer: "True"),
        Question(question: "Naruto is a Ninja", answer: "True"),
    ]

    var qNum = 0, score = 0

    func printQuestions() {
        print(questions[qNum].q)
    }

    mutating func getAnswer(answer: String) {
        checkAns(ansString: answer)
    }

    mutating func checkAns(ansString: String){
        if questions[qNum].a == ansString{
            print("Correct Answer")
        }
        qNum = qNum + 1
    }


}

var myQuiz = Quiz()

myQuiz.printQuestions()

let myAnswer = readLine()

myQuiz.getAnswer(answer: myAnswer ?? "Nil")
