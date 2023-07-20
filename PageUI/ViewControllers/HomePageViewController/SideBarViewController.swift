//
//  SideBarViewController.swift
//  PageUI
//
//  Created by ABC on 12/05/23.
//

import UIKit
protocol SideBarViewControllerDelegate {
    func hideHamburgerView()
    
}
class SideBarViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var delegate : SideBarViewControllerDelegate?
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup () {
        config()
    }
    
    private func config() {
        tableView.register(UINib(nibName: "SideMenuTableViewCell", bundle: nil), forCellReuseIdentifier: "SideMenuTableViewCell")
    }
}

// MARK: - Get SideBarViewController Page Details
extension SideBarViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "SideMenuTableViewCell", for: indexPath) as! SideMenuTableViewCell
        cell.homeButton.tag = indexPath.row
        cell.homeButton.addTarget(self, action: #selector(homeButtonClicked), for: .touchUpInside)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 700
    }
    
    @objc func homeButtonClicked(_Sender: UIButton) {
        self.delegate?.hideHamburgerView()
    }
}
