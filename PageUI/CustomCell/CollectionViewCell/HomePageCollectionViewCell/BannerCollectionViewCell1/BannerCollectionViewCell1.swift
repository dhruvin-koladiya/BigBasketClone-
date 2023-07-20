//
//  BannerCollectionViewCell1.swift
//  PageUI
//
//  Created by ABC on 08/04/23.
//

import UIKit

class BannerCollectionViewCell1: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var sImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        sImage1.setBorder(width: 1, color: .systemFill)
    }
}
