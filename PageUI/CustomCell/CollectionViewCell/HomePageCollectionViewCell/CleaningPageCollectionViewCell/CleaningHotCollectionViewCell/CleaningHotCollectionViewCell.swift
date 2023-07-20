//
//  CleaningHotCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningHotCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var hotImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        hotImage.setCorner(radious: 5)
        hotImage.setBorder(width: 1, color: .systemFill)
    }
}
