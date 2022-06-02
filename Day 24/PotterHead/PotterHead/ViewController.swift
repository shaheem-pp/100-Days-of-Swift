//
//  ViewController.swift
//  PotterHead
//
//  Created by Shaheem PP on 02/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    let quizQstn = [
        ["Dumbledore was a Hedmaster of Hogwarts", "True"],
        ["Harry Potter is a Quidditch Seeker", "True"],
        ["Lord Voldmort have 5 Horcruxes", "False"],
        ["Dursleys lived in Pivet Drive", "True"]
    ]
    
    var qNum = 0
    
    var score = 0
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scoreLabel.text = "0"
        questionLabel.text = quizQstn[qNum][0]
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        let userAnswer = sender.titleLabel!.text!
        
        
        questionLabel.text = getQuestion(questionNumber: qNum)
        print(getQuestion(questionNumber: qNum))
        print(qNum)
        //        }
        
        let isCorrect = checkAnswer(userAnswer : userAnswer)
        
        if (isCorrect==userAnswer){
            print("Is correct")
        }
        
        print(userAnswer)
    }
    
    func checkAnswer(userAnswer : String) -> String{
        return "nil"
    }
    
    func getQuestion(questionNumber : Int) -> String{
        if(qNum != quizQstn.count){
            qNum = qNum + 1
            return quizQstn[questionNumber][0]
        }
        return "Nil"
    }
    
}

