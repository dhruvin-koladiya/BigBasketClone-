//
//  SnacksKitchenCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class SnacksKitchenCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var snacksKitchenImahe: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        snacksKitchenImahe.setCorner(radious: 5)
        snacksKitchenImahe.setBorder(width: 1, color: .systemFill)
    }
}
