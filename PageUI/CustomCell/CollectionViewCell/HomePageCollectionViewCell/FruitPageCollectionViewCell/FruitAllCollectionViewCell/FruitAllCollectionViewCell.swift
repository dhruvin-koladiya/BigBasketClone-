//
//  FruitAllCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitAllCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var fruitAllImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitAllImage.setCorner(radious: 5)
        fruitAllImage.setBorder(width: 1, color: .systemFill)
    }
}
