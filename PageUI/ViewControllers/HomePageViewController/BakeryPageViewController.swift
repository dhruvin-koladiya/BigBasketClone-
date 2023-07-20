//
//  BakeryPageViewController.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

// MARK: - Variables
var bakeryData = [images(image: ["Bakery1", "Bakery2"]),
                  images(image: ["Ba1", "Ba2", "Ba3", "Ba4"]),
                  images(image: ["Bak1", "Bak2", "Bak3", "Bak4"])]

class BakeryPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bakeryTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["BakeryBannerTableViewCell", "BakeryShopTableViewCell", "BakeryShopTableViewCell2"]
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        config()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func nextPageButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func config() {
        tableViewCell.forEach { cellName in
            bakeryTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get BakeryPageViewController Page Details
extension BakeryPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return bakeryData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BakeryBannerTableViewCell", for: indexPath) as! BakeryBannerTableViewCell
            cell.bakeryBannerCollectionViewCell.tag = indexPath.section
            return  cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BakeryShopTableViewCell", for: indexPath) as! BakeryShopTableViewCell
            cell.bakeryShopcollectionView.tag = indexPath.section
            return  cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BakeryShopTableViewCell2", for: indexPath) as! BakeryShopTableViewCell2
            cell.bakeryshopCollectionView2.tag = indexPath.section
            return  cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 460
        case 2: return 400
        default: return 44
        }
    }
}
