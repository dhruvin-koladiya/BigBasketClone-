//
//  GourmetShopCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetShopCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var gourmetShopImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        gourmetShopImage.setCorner(radious: 5)
        gourmetShopImage.setBorder(width: 1, color: .systemFill)
    }
}
