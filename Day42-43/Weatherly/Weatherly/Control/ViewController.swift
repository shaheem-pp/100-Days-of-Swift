//
//  ViewController.swift
//  Weatherly
//
//  Created by Shaheem PP on 22/06/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var currentLocation: UIButton!
    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var searchButton: UIButton!
    @IBOutlet weak var temperatureLabel: UILabel!
    @IBOutlet weak var weatherImageView: UIImageView!
    @IBOutlet weak var weatherLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        searchTextField.delegate=self
        
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        locationLabel.text = searchTextField.text
    }
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField.text==""{
            return true
        }else{
            return false
        }
    }
    
    
    
}

