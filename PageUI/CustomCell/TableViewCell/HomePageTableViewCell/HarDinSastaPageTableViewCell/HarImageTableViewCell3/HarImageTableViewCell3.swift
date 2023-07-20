//
//  HarImageTableViewCell3.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class HarImageTableViewCell3: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image3: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        image3.setBorder(width: 1, color: .systemFill)
    }
}
