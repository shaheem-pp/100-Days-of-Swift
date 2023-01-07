//
//  ViewController.swift
//  Calcu
//
//  Created by Shaheem PP on 08/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var previousEnteredText: UILabel!
    @IBOutlet weak var outPut: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        outPut.text = "\(sender.titleLabel)"
    }
}


