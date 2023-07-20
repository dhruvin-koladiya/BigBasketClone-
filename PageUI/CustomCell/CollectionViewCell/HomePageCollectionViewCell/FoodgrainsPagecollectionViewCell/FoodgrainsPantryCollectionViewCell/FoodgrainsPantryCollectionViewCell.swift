//
//  FoodgrainsPantryCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsPantryCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var pantryImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        pantryImage.setCorner(radious: 5)
        pantryImage.setBorder(width: 1, color: .systemFill)
    }
}
