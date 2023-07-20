//
//  CategoryTableViewCell.swift
//  PageUI
//
//  Created by ABC on 12/03/23.
//

import UIKit

class CategoryTableViewCell: UITableViewCell {

    

    @IBOutlet weak var labelName: UILabel!
  
    @IBOutlet weak var button: UIButton!
    
  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        button.layer.cornerRadius = 10
        button.layer.masksToBounds = true
        button.layer.borderWidth = 1
        button.layer.borderColor = UIColor.systemFill.cgColor
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func fjkgklnkvfl(_ sender: UIButton) {
        
        print("komijokm ")
    }
}
