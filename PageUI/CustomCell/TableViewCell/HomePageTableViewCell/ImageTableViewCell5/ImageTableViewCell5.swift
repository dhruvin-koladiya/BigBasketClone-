//
//  ImageTableViewCell5.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ImageTableViewCell5: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imageView5: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView5.setBorder(width: 1, color: .systemFill)
    }
}
