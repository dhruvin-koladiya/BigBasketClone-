//
//  KitchenStorageCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenStorageCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var storageImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        storageImage.setCorner(radious: 5)
        storageImage.setBorder(width: 1, color: .systemFill)
    }
}
