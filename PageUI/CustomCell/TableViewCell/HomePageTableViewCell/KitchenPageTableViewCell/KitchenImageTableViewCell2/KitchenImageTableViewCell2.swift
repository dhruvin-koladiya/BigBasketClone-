//
//  KitchenImageTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenImageTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var kitchenImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        kitchenImage2.setBorder(width: 1, color: .systemFill)
    }
}
