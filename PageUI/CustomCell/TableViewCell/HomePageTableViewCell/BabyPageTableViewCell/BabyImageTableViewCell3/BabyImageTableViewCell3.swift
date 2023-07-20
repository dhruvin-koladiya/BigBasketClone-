//
//  BabyImageTableViewCell3.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BabyImageTableViewCell3: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var babyImage3: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        babyImage3.setCorner(radious: 5)
        babyImage3.setBorder(width: 1, color: .systemFill)
    }
}
