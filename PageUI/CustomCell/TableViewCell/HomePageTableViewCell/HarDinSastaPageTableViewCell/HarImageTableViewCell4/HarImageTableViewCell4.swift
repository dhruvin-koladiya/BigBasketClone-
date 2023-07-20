//
//  HarImageTableViewCell4.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class HarImageTableViewCell4: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image4: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        image4.setCorner(radious: 5)
        image4.setBorder(width: 1, color: .systemFill)
    }
}
