//
//  EggsImageTableViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsImageTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var eggsImages1: UIImageView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        eggsImages1.setBorder(width: 1, color: .systemFill)
    }
}
