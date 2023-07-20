//
//  GourmetImageTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetImageTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var gourmetImagess: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        gourmetImagess.setBorder(width: 1, color: .systemFill)
    }
}
