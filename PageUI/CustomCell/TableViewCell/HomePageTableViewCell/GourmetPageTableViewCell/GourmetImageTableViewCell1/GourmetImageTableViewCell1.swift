//
//  GourmetImageTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetImageTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var gourmetImage1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        gourmetImage1.setBorder(width: 1, color: .systemFill)
    }
}
