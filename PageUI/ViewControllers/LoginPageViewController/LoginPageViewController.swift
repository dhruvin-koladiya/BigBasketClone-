//
//  LoginPageViewController.swift
//  PageUI
//
//  Created by ABC on 05/03/23.
//

import UIKit

class LoginPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var loginView: UIView!
    @IBOutlet weak var mobileNumberTextField: UITextField!
    @IBOutlet weak var continueButton: UIButton!
    @IBOutlet weak var closeButton: UIButton!
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        continueButton.setCorner(radious: 10)
        loginView.setCorner(radious: 10)
        loginView.setBorder(width: 2, color: .white)
    }
    
    // MARK: - Get LoginPageViewController Page Details
    @IBAction func continueButtonTapped(_ sender: UIButton) {
        if mobileNumberTextField.text == "" {   displayAlert(message: "Enter Mobile Number")  }
        if mobileNumberTextField.text?.count ?? 0 < 10 {  displayAlert(message: "enter Mobile Number")  }
        let otpPageViewController: OtpPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "OtpPageViewController") as! OtpPageViewController
        navigationController?.pushViewController(otpPageViewController, animated: true)
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    func displayAlert(message: String){
        let alert: UIAlertController = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okButton: UIAlertAction = UIAlertAction(title: "ok", style: .default) {
            button in
            print("oky Button tapped")
        }
        alert.addAction(okButton)
        present(alert, animated: true, completion: nil)
    }
}

