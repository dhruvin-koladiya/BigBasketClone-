//
//  FirstPageViewController.swift
//  PageUI
//
//  Created by R82 on 21/02/23.
//

import UIKit

class FirstPageViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var signUpButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

    @IBAction func loginButtonTapped(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let loginPageViewController: LoginPageViewController = storyBoard.instantiateViewController(withIdentifier: "LoginPageViewController") as! LoginPageViewController
        navigationController?.pushViewController(loginPageViewController, animated: true)
        
    }
    
    @IBAction func signUpButtonTapped(_ sender: Any) {
        
        let storyBoard: UIStoryboard = UIStoryboard(name: "Main", bundle: nil)
        let signUpPageViewController: SignPageViewController = storyBoard.instantiateViewController(withIdentifier: "SignPageViewController") as! SignPageViewController
        navigationController?.pushViewController(signUpPageViewController, animated: true)
    }
    
   
}
