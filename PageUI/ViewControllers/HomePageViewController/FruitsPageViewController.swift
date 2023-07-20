//
//  FruitsPageViewController.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

// MARK: - Variables
var fruitsPageData = [images(image: ["image3"]),
                      images(image: ["x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8"]),
                      images(image: ["c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8"]),
                      images(image:  ["111", "333"]),
                      images(image: ["aa", "ab", "ac", "ad", "ae","af"])]

class FruitsPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitsPageTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["FruitsImageTableViewCell1", "FruitPageBannerTableViewCell1", "FruitShopByTableViewCell", "FruitBannerTableViewCell2", "FruitAllTimeTableViewCell"]
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func nextPafeButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func setup() {
        configure()
    }
    
    private func configure() {
        tableViewCell.forEach { cellName in
            fruitsPageTableView?.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get FruitsPageViewController Page Details
extension FruitsPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return fruitsPageData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FruitsImageTableViewCell1", for: indexPath) as! FruitsImageTableViewCell1
            cell.fruitsImage1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FruitPageBannerTableViewCell1", for: indexPath) as! FruitPageBannerTableViewCell1
            cell.fruitBannerCollectionView1.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FruitShopByTableViewCell", for: indexPath) as! FruitShopByTableViewCell
            cell.fruitShopCollectionView.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FruitBannerTableViewCell2", for: indexPath) as! FruitBannerTableViewCell2
            cell.fruitCollectionview2.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FruitAllTimeTableViewCell", for: indexPath) as! FruitAllTimeTableViewCell
            cell.fruitAllCollectionView.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 200
        case 2: return 880
        case 3: return 200
        case 4: return 390
        default: return 44
        }
    }
}
