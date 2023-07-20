//
//  ViewController.swift
//  PageUI
//
//  Created by R82 on 21/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var startShoppingButton: UIButton!
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        startShoppingButton.setCorner(radious: 10)
        loginButton.setCorner(radious: 10)
        loginButton.setBorder(width: 1, color: .systemRed)
    }
    
    // MARK: - Get ViewController Page Details
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        let loginPageViewController: LoginPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "LoginPageViewController") as! LoginPageViewController
        navigationController?.pushViewController(loginPageViewController, animated: true)
    }
    
    @IBAction func startShoppingButtonTapped(_ sender: UIButton) {
        let tabBarViewController: TabBarViewController = Config.storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        navigationController?.pushViewController(tabBarViewController, animated: true)
    }
}

