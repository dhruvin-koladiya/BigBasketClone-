//
//  SnacksPageViewController.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

// MARK: - Variables
var snacksData = [images(image: ["snacksImage1"]),
                  images(image: ["sn1", "sn2", "sn3", "sn4", "sn5", "sn6", "sn7", "sn8", "sn9"]),
                  images(image: ["sna1", "sna2", "sna3", "sna4"]),
                  images(image: ["sImage1", "sImage2", "sImage3", "sImage4"])]

class SnacksPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var snacksTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["SnacksImageTableViewCell1", "SnacksShopTableViewCell", "SnacksBreakfastTableViewCell", "SnacksKitchenTableViewCell"]
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func nextPageButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
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
    
    private func config() {
        tableViewCell.forEach { cellName in
            snacksTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get SnacksPageViewController Page Details
extension SnacksPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return snacksData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 250
        case 1: return 455
        case 2: return 460
        case 3: return 460
        default: return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SnacksImageTableViewCell1", for: indexPath) as! SnacksImageTableViewCell1
            cell.snacksImage1.tag = indexPath.section
            return  cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SnacksShopTableViewCell", for: indexPath) as! SnacksShopTableViewCell
            cell.snacksShopCollectionView.tag = indexPath.section
            return  cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SnacksBreakfastTableViewCell", for: indexPath) as! SnacksBreakfastTableViewCell
            cell.snacksBrakfastCollectionview.tag = indexPath.section
            return  cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SnacksKitchenTableViewCell", for: indexPath) as! SnacksKitchenTableViewCell
            cell.snacksKitchenCollectionview.tag = indexPath.section
            return  cell
        default:
            return UITableViewCell()
        }
    }
}
