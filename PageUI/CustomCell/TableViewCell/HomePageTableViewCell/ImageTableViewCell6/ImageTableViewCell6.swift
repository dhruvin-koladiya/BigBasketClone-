//
//  ImageTableViewCell6.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ImageTableViewCell6: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imageView6: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        imageView6.setBorder(width: 1, color: .systemFill)
    }
}
