//
//  BakeryShopCollectionviewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class BakeryShopCollectionviewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var shopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopImage.setCorner(radious: 5)
        shopImage.setBorder(width: 1, color: .systemFill)
    }
}
