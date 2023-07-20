//
//  SnacksCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class SnacksCollectionViewCell: UICollectionViewCell {

    // MARK: - IBoutlet
    @IBOutlet weak var snacksImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        snacksImage.setCorner(radious: 5)
        snacksImage.setBorder(width: 1, color: .systemFill)
    }
}
