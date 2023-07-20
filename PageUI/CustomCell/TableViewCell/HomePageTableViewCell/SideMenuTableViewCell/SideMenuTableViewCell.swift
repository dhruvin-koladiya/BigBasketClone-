//
//  SideMenuTableViewCell.swift
//  PageUI
//
//  Created by ABC on 14/05/23.
//

import UIKit

class SideMenuTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var homeButton: UIButton!
    @IBOutlet weak var beautyStoreButton: UIButton!
    @IBOutlet weak var offersButton: UIButton!
    @IBOutlet weak var accountButton: UIButton!
    @IBOutlet weak var helpButton: UIButton!
    @IBOutlet weak var neuButton: UIButton!
    @IBOutlet weak var rateButton: UIButton!
    @IBOutlet weak var customerButton: UIButton!
    @IBOutlet weak var categoryButton: UIButton!
    @IBOutlet weak var listButton: UIButton!
    @IBOutlet weak var newLabel: UILabel!
    @IBOutlet weak var newLabel1: UILabel!
    @IBOutlet weak var newLabel2: UILabel!
    
    // MARK: - Constant
    let tabBarController = TabBarViewController()
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        newLabel.setCorner(radious: 5)
        newLabel1.setCorner(radious: 5)
        newLabel2.setCorner(radious: 5)
        
    }
    
    @IBAction func homeButtonTapped(_ sender: Any) {
        let navigationController = self.window?.rootViewController  as! UINavigationController
        
        let tabBarViewController: TabBarViewController = Config.storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        navigationController.pushViewController(tabBarViewController, animated: true)
    }
    
    @IBAction func MyListButtonTapped(_ sender: Any) {
        let navigationController = self.window?.rootViewController  as! UINavigationController
        
        let myListViewController: MyListViewController = Config.storyBoard.instantiateViewController(withIdentifier: "MyListViewController") as! MyListViewController
        navigationController.pushViewController(myListViewController, animated: true)
    }
    
    @IBAction func beautyStoreButtonTapped(_ sender: Any) {
        let navigationController = self.window?.rootViewController  as! UINavigationController
        
        let beautyViewController: BeautyViewController = Config.storyBoard.instantiateViewController(withIdentifier: "BeautyViewController") as! BeautyViewController
        navigationController.pushViewController(beautyViewController, animated: true)
    }
    
    @IBAction func categoryButtonTapped(_ sender: Any) {
        let navigationController = self.window?.rootViewController  as! UINavigationController
        
        let categoryTableViewController: CategoryTableViewController = Config.storyBoard.instantiateViewController(withIdentifier: "CategoryTableViewController") as! CategoryTableViewController
        navigationController.pushViewController(categoryTableViewController, animated: true)
    }
}


