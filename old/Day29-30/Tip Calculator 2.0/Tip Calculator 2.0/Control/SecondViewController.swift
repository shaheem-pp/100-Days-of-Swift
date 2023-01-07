//
//  SecondViewController.swift
//  Tip Calculator 2.0
//
//  Created by Shaheem PP on 08/06/22.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var tipLabelShow: UILabel!
    
    var labelText : String = "0.0"
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tipLabelShow.text = "\(labelText)"
        

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    @IBAction func recalcu(_ sender: UIButton) {
        dismiss(animated: true)
    }
    
}
