//
//  BeautyBannerCollecrtionViewCell1.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class BeautyBannerCollecrtionViewCell1: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var bannerImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerImage1.setCorner(radious: 5)
        bannerImage1.setBorder(width: 1, color: .systemFill)
    }
}
