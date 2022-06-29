//
//  TableViewCell.swift
//  BuddyBook
//
//  Created by Shaheem PP on 29/06/22.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var buddyImages: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    
    
    func setImages(image:ImageClass){
        buddyImages.image = image.image
        nameLabel.text = image.name
    }
    
    
    
}
