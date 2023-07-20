//
//  EggsBannerCollectionViewCell1.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsBannerCollectionViewCell1: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var eggsImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        eggsImage1.setBorder(width: 1, color: .systemFill)
    }
}
