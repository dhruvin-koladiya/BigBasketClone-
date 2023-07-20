//
//  ImageTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ImageTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imagesView2: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        imagesView2.setBorder(width: 1, color: .systemFill)
    }
}
