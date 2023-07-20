//
//  AllViewTableViewCell.swift
//  PageUI
//
//  Created by ABC on 22/03/23.
//

import UIKit

class AllViewTableViewCell: UITableViewCell {

    
    
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var popupLabel: UILabel!
    @IBOutlet weak var addLabel: UILabel!
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var freshoLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }
    
}
