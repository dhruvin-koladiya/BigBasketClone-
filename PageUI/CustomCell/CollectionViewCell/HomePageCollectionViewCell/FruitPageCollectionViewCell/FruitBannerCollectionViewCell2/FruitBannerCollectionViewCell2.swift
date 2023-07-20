//
//  FruitBannerCollectionViewCell2.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitBannerCollectionViewCell2: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var fruitBanner2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitBanner2.setBorder(width: 1, color: .systemFill)
    }
}
