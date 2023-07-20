//
//  BeveragesCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BeveragesCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var beverageImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageImage.setCorner(radious: 5)
        beverageImage.setBorder(width: 1, color: .systemFill)
    }
}
