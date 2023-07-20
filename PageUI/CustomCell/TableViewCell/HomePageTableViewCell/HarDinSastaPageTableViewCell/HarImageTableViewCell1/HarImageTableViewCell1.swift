//
//  HarImageTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class HarImageTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        image1.setBorder(width: 1, color: .systemFill)
    }
}
