//
//  HarImageTableViewCell6.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class HarImageTableViewCell6: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image6: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        image6.setCorner(radious: 5)
        image6.setBorder(width: 1, color: .systemFill)
    }
}
