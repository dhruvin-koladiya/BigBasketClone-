//
//  FruitsImageTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitsImageTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitsImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitsImage1.setBorder(width: 1, color: .systemFill)
    }
}
