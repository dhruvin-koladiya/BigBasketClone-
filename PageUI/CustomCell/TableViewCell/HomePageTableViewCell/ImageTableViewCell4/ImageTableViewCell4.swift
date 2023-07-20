//
//  ImageTableViewCell4.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ImageTableViewCell4: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imageView4: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView4.setBorder(width: 1, color: .systemFill)
    }
}
