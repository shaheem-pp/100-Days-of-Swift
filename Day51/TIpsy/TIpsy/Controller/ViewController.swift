//
//  ViewController.swift
//  Tipsy
//
//  Created by Angela Yu on 09/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var amountabel: UITextField!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var tenButton: UIButton!
    @IBOutlet weak var twentyButton: UIButton!
    @IBOutlet weak var splitLabel: UILabel!
    
    var splitValue = 2
    var tipPercent = 0.0
    var billTotal = 0.0
    var result = 0.0
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        splitLabel.text = String(splitValue)
        
    }
    
    @IBAction func splitStepper(_ sender: UIStepper) {
        splitValue = Int(sender.value)
        splitLabel.text = String(splitValue)
    }
    @IBAction func buttonClicked(_ sender: UIButton) {
        
        zeroButton.isSelected = false
        tenButton.isSelected = false
        twentyButton.isSelected = false
        sender.isSelected = true
        
        
        var current = sender.currentTitle!
        if let i = current.firstIndex(of: "%") {
            current.remove(at: i)
        }
        tipPercent = Double(current)!
        
    }
    
    @IBAction func calculate(_ sender: UIButton) {
        
        billTotal = Double(amountabel.text!)  ?? 0.0
        
        if tipPercent != 0.0 {
            let percentAmount = billTotal/tipPercent
            billTotal = billTotal + percentAmount
        }
        
        result = Double ( round ( 100 * billTotal/Double ( splitValue ) ) / 100 )
        
        self.performSegue(withIdentifier: "goToResult", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "goToResult" {
            
            let destinationVC = segue.destination as! ResultViewController
            
            destinationVC.result = result
            destinationVC.tipPercent = tipPercent
            destinationVC.splitValue = splitValue
            
        }
    }
    
    
}

