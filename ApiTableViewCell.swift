//
//  ApiTableViewCell.swift
//  PageUI
//
//  Created by ABC on 27/03/23.
//

import UIKit

class ApiTableViewCell: UITableViewCell {

    @IBOutlet weak var idLabel: UIView!
    @IBOutlet weak var titleLabel: UIView!
    @IBOutlet weak var contentLabel: UIView!
    @IBOutlet weak var profileLabel: UIView!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
