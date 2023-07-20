//
//  MyListTableViewCell.swift
//  PageUI
//
//  Created by ABC on 01/03/23.
//

import UIKit

class MyListTableViewCell: UITableViewCell {

    @IBOutlet weak var fruitImage: UIImageView!
    @IBOutlet weak var fruitNameImage: UIImageView!
    @IBOutlet weak var priceImage: UIImageView!
    @IBOutlet weak var popupLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    
}
