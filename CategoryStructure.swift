//
//  CategoryStructure.swift
//  PageUI
//
//  Created by ABC on 20/03/23.
//

import Foundation
import UIKit


struct Category {
    
    var image: UIImage
    var titleName: String
    var name: [String]
    
    init(image: UIImage, titleName: String, name: [String]) {
        self.image = image
        self.titleName = titleName
        self.name = name
    }

}
