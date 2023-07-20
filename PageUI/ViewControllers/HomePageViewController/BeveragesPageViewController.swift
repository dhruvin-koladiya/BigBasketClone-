//
//  BeveragesPageViewController.swift
//  PageUI
//
//  Created by R82 on 21/04/23.
//

import UIKit

// MARK: - Variable
var beverageData = [images(image: ["beverageImage1"]),
                    images(image: ["be1", "be2", "be3", "be4", "be5", "be6"]),
                    images(image: ["beverageImage2"]),
                    images(image: ["beve1", "beve2", "beve3", "beve4"]),
                    images(image: ["beverage1", "beverage2", "beverage3", "beverage4"])]

class BeveragesPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beverageTableView: UITableView!
    
    // MARK: - Variable
    var tableViewCell: [String] = ["BeverageImageTableViewCell1","BeverageShopTableViewCell", "BeverageImageTableViewCell2", "BeverageSummerTableViewCell", "BeverageCoffeeTableViewCell" ]
    
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
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func config() {
        tableViewCell.forEach { cellName in
            beverageTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get BeveragesPageViewController Page Details
extension BeveragesPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return beverageData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageImageTableViewCell1", for: indexPath) as! BeverageImageTableViewCell1
            cell.beverageImage1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageShopTableViewCell", for: indexPath) as! BeverageShopTableViewCell
            cell.beverageShopCollectionView.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageImageTableViewCell2", for: indexPath) as! BeverageImageTableViewCell2
            cell.beverageImage2.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageSummerTableViewCell", for: indexPath) as! BeverageSummerTableViewCell
            cell.summerCollectionView.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageCoffeeTableViewCell", for: indexPath) as! BeverageCoffeeTableViewCell
            cell.coffeeCollectionView.tag = indexPath.section
            return cell
        default: return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 660
        case 2: return 200
        case 3: return 460
        case 4: return 460
        default: return 44
        }
    }
}
