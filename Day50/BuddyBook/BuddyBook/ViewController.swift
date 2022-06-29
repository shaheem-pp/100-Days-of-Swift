//
//  ViewController.swift
//  BuddyBook
//
//  Created by Shaheem PP on 28/06/22.
//

import UIKit

class ViewController: UIViewController {
    
    var images: [ImageClass] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        images=createArray()
    }

    func createArray()->[ImageClass]{
        var tempImages : [ImageClass] = []
        let img1 = ImageClass(image: #imageLiteral(resourceName: "img2"), name: "Img1")
        let img2 = ImageClass(image: #imageLiteral(resourceName: "img4"), name: "Img2")
        let img3 = ImageClass(image: #imageLiteral(resourceName: "img1"), name: "Img3")
        let img4 = ImageClass(image: #imageLiteral(resourceName: "img3"), name: "Img4")
        
        tempImages.append(img1)
        tempImages.append(img2)
        tempImages.append(img3)
        tempImages.append(img4)
        
        return tempImages
        
    }

}

extension TableViewCell: UITableViewDataSource , UITableViewDelegate{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return images.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let image = images[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "TableViewCell") as! TableViewCell
        
        cell.setImages(image: image)
    }
    
}
