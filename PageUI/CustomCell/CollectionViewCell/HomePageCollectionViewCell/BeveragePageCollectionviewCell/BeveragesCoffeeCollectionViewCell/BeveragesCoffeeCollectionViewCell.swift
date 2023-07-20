//
//  BeveragesCoffeeCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeveragesCoffeeCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var coffeeImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        coffeeImage.setCorner(radious: 5)
        coffeeImage.setBorder(width: 1, color: .systemFill)
    }
}
