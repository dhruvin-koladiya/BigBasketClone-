//
//  KitchenImageTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenImageTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var kitchenImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        kitchenImage1.setBorder(width: 1, color: .systemFill)
    }
}
