//
//  ImageTableViewCell3.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ImageTableViewCell3: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imagesView3: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        imagesView3.setCorner(radious: 8)
        imagesView3.setBorder(width: 1, color: .systemFill)
    }
}
