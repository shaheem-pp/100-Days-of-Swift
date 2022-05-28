//
//  ViewController.swift
//  UIView
//
//  Created by Shaheem PP on 28/05/22.
//

import UIKit

class ViewController: UIViewController {
    
    //imageView Defined
    private let imageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        return imageView
    }()
    
    //button view defined
    private let button: UIButton = {
        let button = UIButton()
        button.backgroundColor = .white
        button.setTitle("Click me!", for: .normal)
        button.setTitleColor(.black, for: .normal)
        return button
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.image = #imageLiteral(resourceName: "th")
        
        view.backgroundColor = .systemPink
        view.addSubview(imageView)
        imageView.frame = CGRect(
            x: 0,
            y: 0,
            width: view.frame.size.width-60,
            height: view.frame.size.height-150)
        imageView.center = view.center
        
        view.addSubview(button)
        
        button.frame = CGRect(
            x: 30,
            y: view.frame.size.height-150-view.safeAreaInsets.bottom,
            width: view.frame.size.width-60,
            height: 55)
        button.layer.cornerRadius = 5
        button.addTarget(self, action: #selector(buttonClickd), for: .touchUpInside)
    }
    
    //    button function to randomise the image
    @objc func buttonClickd() {
        let randomImg = [ #imageLiteral(resourceName: "td"), #imageLiteral(resourceName: "ccm"), #imageLiteral(resourceName: "ddl"), #imageLiteral(resourceName: "th") ]
        let rand = Int.random(in: 0...3)
        imageView.image = randomImg[rand]
    }
    
    
}

