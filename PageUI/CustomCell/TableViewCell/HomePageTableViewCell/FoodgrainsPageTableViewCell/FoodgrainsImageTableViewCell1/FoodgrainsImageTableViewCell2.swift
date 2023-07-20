//
//  FoodgrainsImageTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsImageTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var foodImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        foodImage2.setBorder(width: 1, color: .systemFill)
    }
}
