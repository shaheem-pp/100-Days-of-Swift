//
//  ViewController.swift
//  Tip Calculator 2.0
//
//  Created by Shaheem PP on 08/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var numOfPeopleLabel: UILabel!
    @IBOutlet weak var amountTextView: UITextField!
    @IBOutlet weak var tipLabel: UILabel!
    
    var numberOfPeopleValue : Float = 1.0
    var billValueS = "0"
    var billValueI : Float = 0.0
    var tipPercent : Float = 2.0
    
    var myTip = Tip()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func peopleStepper(_ sender: UIStepper) {
        numberOfPeopleValue = Float(sender.value)
        numOfPeopleLabel.text = "\(numberOfPeopleValue)Nos."
    }
    
    @IBAction func tipSlider(_ sender: UISlider) {
        tipPercent = Float(Int(sender.value))
        tipLabel.text = "\(tipPercent)%"
//        print(sender.value)
    }
    
    @IBAction func calcualteButton(_ sender: UIButton) {
        billValueS = amountTextView.text ?? "0"
        billValueI = Float(billValueS) ?? 0.0
        
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let secondVC = segue.destination as! SecondViewController
        secondVC.labelText = myTip.countTip(tip: tipPercent, people: numberOfPeopleValue, bill: billValueI)
    }
    
}

