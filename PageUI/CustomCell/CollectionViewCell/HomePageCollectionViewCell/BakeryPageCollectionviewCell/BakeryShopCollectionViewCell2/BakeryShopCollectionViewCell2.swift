//
//  BakeryShopCollectionViewCell2.swift
//  PageUI
//
//  Created by R82 on 21/04/23.
//

import UIKit

class BakeryShopCollectionViewCell2: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var shopImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopImage2.setCorner(radious: 5)
        shopImage2.setBorder(width: 1, color: .systemFill)
    }
}
