//
//  KitchenCookwareCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenCookwareCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var cookwareImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        cookwareImage.setCorner(radious: 5)
        cookwareImage.setBorder(width: 1, color: .systemFill)
    }
}
