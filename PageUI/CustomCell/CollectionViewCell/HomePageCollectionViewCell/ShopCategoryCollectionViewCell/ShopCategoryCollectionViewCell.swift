//
//  ShopCategoryCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ShopCategoryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var shopCategoryImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopCategoryImage.setCorner(radious: 5)
        shopCategoryImage.setBorder(width: 1, color: .systemFill)
    }
}
