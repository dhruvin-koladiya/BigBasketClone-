//
//  BannerCollectionViewCell2.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerCollectionViewCell2: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var bannerImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerImage2.setBorder(width: 1, color: .systemFill)
    }
}
