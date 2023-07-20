//
//  KitchenShopCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenShopCollectionViewCell: UICollectionViewCell {
  
    // MARK: - IBoutlet
    @IBOutlet weak var kitchenShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        kitchenShopImage.setCorner(radious: 5)
        kitchenShopImage.setBorder(width: 1, color: .systemFill)
    }
}
