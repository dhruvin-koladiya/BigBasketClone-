//
//  FoodgrainsBudgetCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsBudgetCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var budgetImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        budgetImage.setCorner(radious: 5)
        budgetImage.setBorder(width: 1, color: .systemFill)
    }
}
