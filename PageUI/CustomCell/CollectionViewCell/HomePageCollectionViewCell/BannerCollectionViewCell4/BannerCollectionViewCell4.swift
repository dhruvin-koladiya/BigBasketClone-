//
//  BannerCollectionViewCell4.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerCollectionViewCell4: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var bannerImage4: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerImage4.setBorder(width: 1, color: .systemFill)
    }
}
