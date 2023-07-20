//
//  EggsShopCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsShopCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var eggsShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        eggsShopImage.setCorner(radious: 5)
        eggsShopImage.setBorder(width: 1, color: .systemFill)
    }
}
