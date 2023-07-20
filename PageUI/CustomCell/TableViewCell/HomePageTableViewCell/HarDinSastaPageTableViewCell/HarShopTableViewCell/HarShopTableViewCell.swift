//
//  HarShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class HarShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        image2.setCorner(radious: 5)
        image2.setBorder(width: 1, color: .systemFill)
    }
}
