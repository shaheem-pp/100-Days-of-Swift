//
//  ViewController.swift
//  PotterHead
//
//  Created by Shaheem PP on 02/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var qstnStruct = Question()
    
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet weak var trueButton: UIButton!
    @IBOutlet weak var falseButton: UIButton!
    @IBOutlet weak var progressBar: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        questionLabel.text = qstnStruct.getQuestion()
    }
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        let userInput = sender.titleLabel!.text!
        
        qstnStruct.checkAnswer(userAnswer: userInput)
        
        scoreLabel.text = String(qstnStruct.showScore())
        
        qstnStruct.nextQstn()
        questionLabel.text = qstnStruct.getQuestion()
        
        print("Qnum = \(qstnStruct.qNum), q size = \(qstnStruct.quizQstn.count)")
        
        progressBar.progress = qstnStruct.updateProgress()
        
    }
}
