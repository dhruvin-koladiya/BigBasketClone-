//
//  FruitBannerCollectionViewCell1.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitBannerCollectionViewCell1: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var fruitBanner1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitBanner1.setBorder(width: 1, color: .systemFill)
    }
}
