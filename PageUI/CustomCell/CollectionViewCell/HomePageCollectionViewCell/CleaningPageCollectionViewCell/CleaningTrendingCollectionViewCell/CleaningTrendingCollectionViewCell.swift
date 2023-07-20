//
//  CleaningTrendingCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningTrendingCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var trendingImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        trendingImage.setCorner(radious: 5)
        trendingImage.setBorder(width: 1, color: .systemFill)
    }
}
