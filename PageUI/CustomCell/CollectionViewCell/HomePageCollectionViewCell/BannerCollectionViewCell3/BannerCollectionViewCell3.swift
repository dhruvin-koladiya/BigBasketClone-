//
//  BannerCollectionViewCell3.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerCollectionViewCell3: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var bannerImage3: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerImage3.setBorder(width: 1, color: .systemFill)
    }
}
