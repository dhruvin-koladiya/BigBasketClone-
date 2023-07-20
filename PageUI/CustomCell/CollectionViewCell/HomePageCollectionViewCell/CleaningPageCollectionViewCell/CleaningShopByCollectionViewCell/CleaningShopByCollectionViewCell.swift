//
//  CleaningShopByCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningShopByCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var cleaningShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        cleaningShopImage.setCorner(radious: 5)
        cleaningShopImage.setBorder(width: 1, color: .systemFill)
    }
}
