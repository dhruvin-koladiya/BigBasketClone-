//
//  ImageViewTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ImageViewTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var imagesView: UIView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        imagesView.setCorner(radious: 8)
        imagesView.setBorder(width: 1, color: .systemFill)
    }
}
