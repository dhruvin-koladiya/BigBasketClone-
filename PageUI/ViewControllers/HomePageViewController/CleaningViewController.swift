//
//  CleaningViewController.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

// MARK: - Variables
var cleaningData = [images(image: ["cleaningImage1", "cleaningImage2"]),
                    images(image: ["cl1", "cl2", "cl3", "cl4", "cl5", "cl6", "cl7", "cl8", "cl9"]),
                    images(image: ["cla1", "cla2", "cla3", "cla4"]),
                    images(image: ["cImage1", "cImage2", "cImage3", "cImage4"])]

class CleaningViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var cleaningTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["CleaningBannerTableViewCell1", "CleaningShopByTableViewCell", "CleaningHotTableViewCell", "CleaningTrendingTableViewCell"]
    
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
            cleaningTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get CleaningViewController Page Details
extension CleaningViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return cleaningData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CleaningBannerTableViewCell1", for: indexPath) as! CleaningBannerTableViewCell1
            cell.cleaningBannerCollectionview.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CleaningShopByTableViewCell", for: indexPath) as! CleaningShopByTableViewCell
            cell.cleaningShopCollectionview.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CleaningHotTableViewCell", for: indexPath) as! CleaningHotTableViewCell
            cell.hotCollectionView.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "CleaningTrendingTableViewCell", for: indexPath) as! CleaningTrendingTableViewCell
            cell.trendingCollectionview.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 465
        case 2: return 460
        case 3: return 460
        default: return 44
        }
    }
}
