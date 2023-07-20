//
//  FruitShopByCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitShopByCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var fruitShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitShopImage.setCorner(radious: 5)
        fruitShopImage.setBorder(width: 1, color: .systemFill )
    }
}
