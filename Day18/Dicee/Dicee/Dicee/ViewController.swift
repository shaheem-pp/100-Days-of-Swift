//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBOutlet weak var dice1: UIImageView!
    @IBOutlet weak var dice2: UIImageView!
    
    let images = [ #imageLiteral(resourceName: "DiceOne"), #imageLiteral(resourceName: "DiceTwo"), #imageLiteral(resourceName: "DiceThree"), #imageLiteral(resourceName: "DiceFour"), #imageLiteral(resourceName: "DiceFive"), #imageLiteral(resourceName: "DiceSix") ]
    
    @IBOutlet weak var player1sb: UILabel!
    @IBOutlet weak var player2sb: UILabel!
    @IBOutlet weak var totalclick: UILabel!
    
    var player1score = 0
    var player2score = 0
    var total = 0
    
    @IBOutlet weak var text: UILabel!
    
    @IBAction func btn(_ sender: Any) {
        total = total + 1
        let d1 = Int.random(in: 0..<6)
        let d2 = Int.random(in: 0..<6)
        dice1.image = images[d1]
        dice2.image = images[d2]
        if(d1>d2){
            text.text = "Player 1 → +1"
            player1score = player1score + 1
            player1sb.text = String(player1score)
        }else if(d1<d2){
            text.text = "Player 2 → +1"
            player2score = player2score + 1
            player2sb.text = String(player2score)
        }else{
            text.text = "Draw"
        }
        totalclick.text = "Total Times Clicked : \(total)"
    }
    
}

