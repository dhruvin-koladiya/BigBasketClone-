//
//  VendorTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class VendorTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var vendorImage: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        vendorImage.setBorder(width: 1, color: .systemFill)
    }
}
