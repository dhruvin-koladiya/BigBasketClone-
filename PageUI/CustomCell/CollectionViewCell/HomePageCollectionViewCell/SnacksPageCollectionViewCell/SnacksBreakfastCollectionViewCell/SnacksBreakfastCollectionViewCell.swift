//
//  SnacksBreakfastCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class SnacksBreakfastCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var breakfastImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        breakfastImage.setCorner(radious: 5)
        breakfastImage.setBorder(width: 1, color: .systemFill)
    }
}
