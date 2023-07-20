//
//  FoodgrainsViewController.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

// MARK: - Variables
var foodgrainsPageData = [images(image: ["fo1", "fo2", "fo3"]),
                          images(image: ["y1", "y2", "y3", "y4", "y5", "y6", "y7", "y8"]),
                          images(image: ["pa1", "pa2", "pa3", "pa4"]),
                          images(image: ["foodImage"]),
                          images(image: ["budget1", "budget2", "budget2", "budget2"]),
                          images(image: ["foodImage1"])]

class FoodgrainsViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var foodgrainsTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["FoodgrainsBannerTableViewCell1", "FoodgrainsShopByTableViewCell", "FoodgrainsPantryTableViewCell", "FoodgrainsImageTableViewCell1", "FoodgrainsBudgetTableViewCell", "FoodgrainsImageTableViewCell2"]
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    @IBAction func nextPageButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    private func setup() {
        config()
    }
    
    private func config() {
        tableViewCell.forEach { cellName in
            foodgrainsTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get FoodgrainsViewController Page Details
extension FoodgrainsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return foodgrainsPageData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodgrainsBannerTableViewCell1", for: indexPath) as! FoodgrainsBannerTableViewCell1
            cell.foodgrainsBannerCollectionView1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodgrainsShopByTableViewCell", for: indexPath) as! FoodgrainsShopByTableViewCell
            cell.foodgrainsCollectionView.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodgrainsPantryTableViewCell", for: indexPath) as! FoodgrainsPantryTableViewCell
            cell.pantryCollectionView.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodgrainsImageTableViewCell1", for: indexPath) as! FoodgrainsImageTableViewCell1
            cell.foodgrainsImage1.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodgrainsBudgetTableViewCell", for: indexPath) as! FoodgrainsBudgetTableViewCell
            cell.budgetCollectionView.tag = indexPath.section
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FoodgrainsImageTableViewCell2", for: indexPath) as! FoodgrainsImageTableViewCell2
            cell.foodImage2.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 880
        case 2: return 470
        case 3: return 200
        case 4: return 470
        case 5: return 200
        default: return 44
        }
    }
}
