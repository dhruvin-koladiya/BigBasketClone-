//
//  PopupPage.swift
//  PageUI
//
//  Created by ABC on 01/01/18.
//

import UIKit

class PopupPage: UIViewController {

    
    
    @IBOutlet weak var NameView: UIView!
    
    @IBOutlet weak var continueButton2: UIButton!
    
    @IBOutlet weak var popupView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton2?.layer.cornerRadius = 10
        continueButton2?.layer.masksToBounds = true
        NameView?.layer.cornerRadius = 25
        NameView?.layer.masksToBounds = true
        popupView?.layer.cornerRadius = 10
        popupView?.layer.masksToBounds = true
     
        
        
    }

    

    @IBAction func continueButtonTapped(_ sender: UIButton) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let tabBarViewController: TabBarViewController = storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        navigationController?.pushViewController(tabBarViewController, animated: true)
        
    }
    
    @IBAction func skipButtonTapped(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginPageViewController: LoginPageViewController = storyBoard.instantiateViewController(withIdentifier: "LoginPageViewController") as! LoginPageViewController
        navigationController?.pushViewController(loginPageViewController,animated: true)
        
    }
    
}







