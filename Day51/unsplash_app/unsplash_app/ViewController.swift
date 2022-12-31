//
//  ViewController.swift
//  unsplash_app
//
//  Created by Shaheem PP on 21/12/22.
//

import UIKit
import SDWebImage

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    let photoService = PhotoService()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        photoService.fetchRandomPhoto { [weak self] result in
              guard let self = self else { return }

              switch result {
              case .success(let photo):
                self.imageView.sd_setImage(with: photo.url)
              case .failure(let error):
                print(error)
              }
            }
          }
        }
