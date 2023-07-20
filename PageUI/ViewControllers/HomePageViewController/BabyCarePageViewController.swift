//
//  BabyCarePageViewController.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

// MARK: - Variable
var babyData = [images(image: ["babyImage1"]),
                images(image: ["bab1", "bab2", "bab3", "bab4", "bab5", "bab6"]),
                images(image: ["baby1", "baby2", "baby3", "baby4"]),
                images(image: ["babyImage2"]),
                images(image: ["babyImage3"])]

class BabyCarePageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var babyTableView: UITableView!
    
    // MARK: - Get Variable
    var tableViewCell: [String] = ["BabyImageTableViewCell1", "BabyShopTableViewCell", "BabyBathTableViewCell", "BabyImageTableViewCell2", "BabyImageTableViewCell3"]
    
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
    
    private func setup() {
        config()
    }
    
    @IBAction func backButtonTapped(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func config() {
        tableViewCell.forEach { cellName in
            babyTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get BabyCarePageViewController Page Details
extension BabyCarePageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return babyData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 660
        case 2: return 460
        case 3: return 200
        case 4: return 260
        default: return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BabyImageTableViewCell1", for: indexPath) as! BabyImageTableViewCell1
            cell.babyImage1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BabyShopTableViewCell", for: indexPath) as! BabyShopTableViewCell
            cell.babyCollectionView.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BabyBathTableViewCell", for: indexPath) as! BabyBathTableViewCell
            cell.babyBathCollectionview.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BabyImageTableViewCell2", for: indexPath) as! BabyImageTableViewCell2
            cell.babyImage2.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BabyImageTableViewCell3", for: indexPath) as! BabyImageTableViewCell3
            cell.babyImage3.tag = indexPath.section
            return cell
        default: return UITableViewCell()
        }
    }
}


