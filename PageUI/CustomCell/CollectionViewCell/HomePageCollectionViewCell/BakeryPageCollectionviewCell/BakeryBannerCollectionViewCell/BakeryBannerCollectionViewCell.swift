//
//  BakeryBannerCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class BakeryBannerCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var bakeryBannerImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bakeryBannerImage.setBorder(width: 1, color: .systemFill)
    }
}
