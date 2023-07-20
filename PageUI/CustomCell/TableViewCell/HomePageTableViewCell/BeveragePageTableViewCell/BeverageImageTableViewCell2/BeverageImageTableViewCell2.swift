//
//  BeverageImageTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageImageTableViewCell2: UITableViewCell {

    // MARK: - IBOutlet
    @IBOutlet weak var beverageImage2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageImage2.setBorder(width: 1, color: .systemFill)
    }
}


