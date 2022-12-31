//
//  ViewController.swift
//  grocery
//
//  Created by Shaheem PP on 15/12/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var randImageView: UIImageView!
    func makeGetCall() {
        let url = URL(string: "https://api.unsplash.com/photos/?client_id=b3bxZ_BM83rVvqAPidYZlAa707z4liUeuvbM4ubbQlc")!
            if let data = try? Data(contentsOf: url) {
                // Create Image and Update Image View
                randImageView.image = UIImage(data: data.urls.thumbs)
            }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        makeGetCall()
        // Do any additional setup after loading the view.
    }

    @IBAction func nextImageBtn(_ sender: UIButton) {
        makeGetCall()
    }
    
}

