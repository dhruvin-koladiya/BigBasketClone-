//
//  OtpPageViewController.swift
//  PageUI
//
//  Created by ABC on 05/03/23.
//

import UIKit

class OtpPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var otpTextField: UITextField!
    @IBOutlet weak var loginbutton: UIButton!
    
    // MARK: - Variables
    var commonPopup : PopupView!
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        loginbutton.setCorner(radious: 10)
    }
    
    // MARK: - Get OtpPageViewController Page Details
    @IBAction func loginButtonTapped(_ sender: UIButton) {
        if otpTextField.text == "" {
            displayAlert(message: "Enter OTP Number")
        }
        else if otpTextField.text?.count ?? 0 < 5 {
            displayAlert(message: "Enter OTP Number")
        }
        else  {
            self.commonPopup = PopupView(frame: self.view.frame)
            self.commonPopup.continueButton.addTarget(self, action: #selector(continueButtonTapped), for: .touchUpInside)
            self.commonPopup.skipButton.addTarget(self, action: #selector(skipButtonTapped), for: .touchUpInside)
            self.view.addSubview(commonPopup)
        }
    }
    
    @objc func continueButtonTapped() {
        let tabBarViewController: TabBarViewController = Config.storyBoard.instantiateViewController(withIdentifier: "TabBarViewController") as! TabBarViewController
        navigationController?.pushViewController(tabBarViewController, animated: true)
    }
    
    @objc func skipButtonTapped(_ sender : UIButton) {
        let   loginPageViewController: LoginPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "LoginPageViewController") as! LoginPageViewController
        navigationController?.pushViewController(loginPageViewController, animated: true)
    }
    
    func displayAlert(message: String) {
        let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "ok", style: .default) {
            button in
            print("oky Button tapped")
        }
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}

