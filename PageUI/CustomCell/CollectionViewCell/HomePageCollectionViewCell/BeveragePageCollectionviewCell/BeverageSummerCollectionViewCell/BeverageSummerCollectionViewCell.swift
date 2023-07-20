//
//  BeverageSummerCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageSummerCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var summerImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        summerImage.setCorner(radious: 5)
        summerImage.setBorder(width: 1, color: .systemFill)
    }
}
