//
//  GourmetShopCollectionviewCell2.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetShopCollectionviewCell2: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var gourmetImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        gourmetImage2.setCorner(radious: 5)
        gourmetImage2.setBorder(width: 1, color: .systemFill)
    }
}
