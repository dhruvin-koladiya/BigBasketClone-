//
//  SearchPageViewController.swift
//  PageUI
//
//  Created by ABC on 04/03/23.
//

import UIKit

class SearchPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var image1: UIImageView!
    @IBOutlet weak var image2: UIImageView!
    @IBOutlet weak var image3: UIImageView!
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(SearchPageViewController.imageTapped(gesture:)))
        image1.addGestureRecognizer(tapGesture)
        image1.isUserInteractionEnabled = true
        image1.setCorner(radious: 10)
        image1.setBorder(width: 1, color: .systemFill)
        image2.setCorner(radious: 10)
        image2.setBorder(width: 1, color: .systemFill)
        image3.setCorner(radious: 10)
        image3.setBorder(width: 1, color: .systemFill)
    }
    
    // MARK: - Get SearchViewController Page Details
    @objc func imageTapped(gesture: UIGestureRecognizer) {
        let tabBarViewController: TabBarViewController = Config.storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        navigationController?.pushViewController(tabBarViewController, animated: true)
        tabBarViewController.tabBar.isHidden = true
    }
}
