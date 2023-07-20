//
//  FruitsCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class FruitsCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var fruitsImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitsImage.setCorner(radious: 5)
        fruitsImage.setBorder(width: 1, color: .systemFill)
    }
}
