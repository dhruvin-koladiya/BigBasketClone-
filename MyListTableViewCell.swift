//
//  MyListTableViewCell.swift
//  PageUI
//
//  Created by ABC on 03/03/23.
//

import UIKit

class MyListTableViewCell: UITableViewCell {

    
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var imageName: UIImageView!
    @IBOutlet weak var imagePrice: UIImageView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var button: UIButton!
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        images.layer.cornerRadius = 10
        images.layer.masksToBounds = true
        images.layer.borderWidth = 1
        images.layer.borderColor = UIColor.systemFill.cgColor
        label1.layer.cornerRadius = 5
        label1.layer.masksToBounds = true
        label1.layer.borderWidth = 1
        label1.layer.borderColor = UIColor.systemGreen.cgColor
        label2.layer.cornerRadius = 5
        label2.layer.masksToBounds = true
//        label1.layer.borderWidth = 1
//        label1.layer.borderColor = UIColor.systemCyan.cgColor
    }

    
    
    
    
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
