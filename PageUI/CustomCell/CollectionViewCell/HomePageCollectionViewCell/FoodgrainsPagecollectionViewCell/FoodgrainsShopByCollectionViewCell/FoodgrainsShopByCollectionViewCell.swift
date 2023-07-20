//
//  FoodgrainsShopByCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsShopByCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var foodgrainsShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        foodgrainsShopImage.setCorner(radious: 5)
        foodgrainsShopImage.setBorder(width: 1, color: .systemFill)
    }
}
