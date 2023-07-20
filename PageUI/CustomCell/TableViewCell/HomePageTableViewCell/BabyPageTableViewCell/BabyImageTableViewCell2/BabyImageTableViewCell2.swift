//
//  BabyImageTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BabyImageTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var babyImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        babyImage2.setBorder(width: 1, color: .systemFill)
    }
}
