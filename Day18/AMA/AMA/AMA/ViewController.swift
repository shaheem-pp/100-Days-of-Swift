//
//  ViewController.swift
//  Magic 8 Ball
//
//  Created by Angela Yu on 14/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = [ #imageLiteral(resourceName: "ball1") , #imageLiteral(resourceName: "ball2"), #imageLiteral(resourceName: "ball3"), #imageLiteral(resourceName: "ball4"), #imageLiteral(resourceName: "ball5")]
    @IBOutlet weak var firsLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    let wordArray = ["ഐക്കോട്ടെ", "മാണ്ട", "പിന്നെ ബാ", "ഇയ്യ് അതങ്ങട്ട് ചെയ്തൂട്", "എനക്ക് യാതൊരു ഐഡിയയും ഇല്ലാട്ടാ"]
    
    @IBAction func button(_ sender: UIButton) {
        let random = Int.random(in: 0..<5)
        imageView.image = ballArray[random]
        firsLabel.text = wordArray[random]
    }
    


}

