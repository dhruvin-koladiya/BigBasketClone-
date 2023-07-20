//
//  AllTableViewCell.swift
//  PageUI
//
//  Created by ABC on 18/03/23.
//

import UIKit

class AllTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var plusButton: UIView!
    @IBOutlet weak var minusButton: UIView!
    @IBOutlet weak var quntityLabel: UILabel!
    @IBOutlet weak var countView: UIView!
    @IBOutlet weak var images: UIImageView!
    @IBOutlet weak var popupButton: UIButton!
    @IBOutlet weak var addButton: UIButton!
    @IBOutlet weak var p1: UILabel!
    @IBOutlet weak var p2: UILabel!
    @IBOutlet weak var nameLabel1: UILabel!
    @IBOutlet weak var nameLabel2: UILabel!
    @IBOutlet weak var freshoLabel: UILabel!
    @IBOutlet weak var priceButton: UIButton!
    
    // MARK: - Variables
    var counter: Int = 0
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        images.setCorner(radious: 10)
        images.setBorder(width: 1, color: .separator)
        popupButton.setCorner(radious: 5)
        popupButton.setBorder(width: 1, color: .systemGreen)
        addButton.setCorner(radious: 5)
        addButton.setBorder(width: 1, color: .red)
        countView.setCorner(radious: 5)
        countView.setBorder(width: 1, color: .red)
        priceButton.setCorner(radious: 5)
        priceButton.setBorder(width: 1, color: .systemFill)
    }
    
    // MARK: - Get AllTableViewCell Page Details
    @IBAction func addButtonClick(_ sender: UIButton) {
        counter = counter + 1
        quntityLabel.text = "\(counter)"
        addButton.isHidden = true
        countView.isHidden = false
    }
    
    @IBAction func plusButtonTapped(_ sender: UIButton) {
        counter = counter + 1
        quntityLabel.text = "\(counter)"
    }
    
    @IBAction func minusButtonClicked(_ sender: UIButton) {
        counter = counter - 1
        quntityLabel.text = "\(counter)"
        if counter == 0 {
            addButton.isHidden = false
            countView.isHidden = false
        }
    }
}
