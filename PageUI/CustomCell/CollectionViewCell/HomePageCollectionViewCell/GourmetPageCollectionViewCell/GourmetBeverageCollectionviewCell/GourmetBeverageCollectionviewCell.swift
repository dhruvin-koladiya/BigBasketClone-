//
//  GourmetBeverageCollectionviewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetBeverageCollectionviewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var beverageImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageImage.setCorner(radious: 5)
        beverageImage.setBorder(width: 1, color: .systemFill)
    }
}
