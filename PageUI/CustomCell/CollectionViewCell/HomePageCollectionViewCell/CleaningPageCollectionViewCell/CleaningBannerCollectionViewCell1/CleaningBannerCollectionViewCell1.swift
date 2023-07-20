//
//  CleaningBannerCollectionViewCell1.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningBannerCollectionViewCell1: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var cleaningBannerImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        cleaningBannerImage1.setBorder(width: 1, color: .systemFill)
    }
}
