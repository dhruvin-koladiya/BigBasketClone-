//
//  BabyImageTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BabyImageTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var babyImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        babyImage1.setBorder(width: 1, color: .systemFill)
    }
}
