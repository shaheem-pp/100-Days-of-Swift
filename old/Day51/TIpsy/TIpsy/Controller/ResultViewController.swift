//
//  ResultViewController.swift
//  TIpsy
//
//  Created by Shaheem PP on 04/08/22.
//

import UIKit

class ResultViewController: UIViewController {
    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var descLabel: UILabel!
    
    var splitValue = 2
    var tipPercent = 0.0
    var billTotal = 0.0
    var result = 0.0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
        
        resultLabel.text = String(result)
        descLabel.text = "Split between \(splitValue) people, with \(tipPercent)% tip."
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
    
    @IBAction func reCalculate(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
