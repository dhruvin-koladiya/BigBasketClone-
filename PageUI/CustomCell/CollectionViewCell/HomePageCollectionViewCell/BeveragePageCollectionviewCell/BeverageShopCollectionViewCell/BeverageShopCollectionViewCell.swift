//
//  BeverageShopCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageShopCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var beverageShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageShopImage.setCorner(radious: 5)
        beverageShopImage.setBorder(width: 1, color: .systemFill)
    }
}
