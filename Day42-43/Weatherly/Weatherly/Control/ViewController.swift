//
//  ViewController.swift
//  Weatherly
//
//  Created by Shaheem PP on 22/06/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    let wm = WeatherModel()
    
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
    
    
    @IBAction func searchPressed(_ sender: UIButton) {
        searchTextField.endEditing(true)
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        //        let url = wm.apiGenerate(name: searchTextField.text ?? "nil")
        searchTextField.endEditing(true)
        return true
    }
    
    
    
}

