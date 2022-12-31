//
//  ViewController.swift
//  weather.io
//
//  Created by Shaheem PP on 22/12/22.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var searchTextField: UITextField!
    @IBOutlet weak var temperaturLabel: UILabel!
    @IBOutlet weak var cityLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        searchTextField.delegate = self
    }

    @IBAction func searchBtnPressed(_ sender: UIButton) {
        if textFieldShouldReturn(searchTextField)==true{
            print(searchTextField.text ?? "No search value")
        }
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        searchBtnPressed(searchTextField)
        return true
    }
    
}

