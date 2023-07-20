//
//  EggsMeatyCollectionViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsMeatyCollectionViewCell: UICollectionViewCell {
    
    // MARK: - IBoutlet
    @IBOutlet weak var meatyImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        meatyImage.setCorner(radious: 5)
        meatyImage.setBorder(width: 1, color: .systemFill)
    }
}
