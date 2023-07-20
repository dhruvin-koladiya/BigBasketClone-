//
//  BeverageImageTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageImageTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beverageImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageImage1.setBorder(width: 1, color: .systemFill)
    }
}
