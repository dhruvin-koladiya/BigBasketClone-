//
//  Config.swift
//  PageUI
//
//  Created by ABC on 03/04/23.
//

import Foundation
import UIKit

struct Config {
    static let appName = "My City Store"
    static let databaseName = "mycitystore.db"
    static let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
    static let androidLink: String = ""
    static let iOSLink: String = ""
    static let appDateFormat = "dd mmm yyyy"
    static let appTimeFormat = "hh:mm a"
    static let serverDateFormat: String = "yyyy-mm-dd"
    static let amountSign: String = "₹"
}

class button: UIButton {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {self.layer.cornerRadius = cornerRadius}
    }
}

class view: UIView {
    @IBInspectable var cornerRadius: CGFloat = 0 {
        didSet {self.layer.cornerRadius = cornerRadius}
    }
    
    class imageView: UIImageView {
        @IBInspectable var cornerRadius: CGFloat = 0 {
            didSet {self.layer.cornerRadius = cornerRadius}
        }
    }
}
