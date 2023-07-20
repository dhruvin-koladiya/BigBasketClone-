//
//  ContainerViewController.swift
//  PageUI
//
//  Created by ABC on 12/03/23.
//

import UIKit

class ContainerViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.cornerRadius = 15
        imageView.layer.masksToBounds = true
       
    }
    


}
