//
//  KitchenPageViewController.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

// MARK: - Variables
var kitchenData = [images(image: ["kitchenImage"]),
                   images(image: ["ks1", "ks2", "ks3", "ks4", "ks5", "ks6", "ks7", "ks8", "ks9"]),
                   images(image: ["kitchenImage2"]),
                   images(image: ["ki1", "ki2", "ki3", "ki4"]),
                   images(image: ["kit1", "kit2", "kit3", "kit4"])]

class KitchenPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var kitchenTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["KitchenImageTableViewCell1", "KitchenShopTableViewCell", "KitchencookwareTableViewCell", "KitchenStorageTableViewCell", "KitchenImageTableViewCell2"]
    
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
            kitchenTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get KitchenPageViewController Page Details
extension KitchenPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return kitchenData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "KitchenImageTableViewCell1", for: indexPath) as! KitchenImageTableViewCell1
            cell.kitchenImage1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "KitchenShopTableViewCell", for: indexPath) as! KitchenShopTableViewCell
            cell.kitchenShopcollectionview.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "KitchenImageTableViewCell2", for: indexPath) as! KitchenImageTableViewCell2
            cell.kitchenImage2.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "KitchencookwareTableViewCell", for: indexPath) as! KitchencookwareTableViewCell
            cell.cookwareCollectionView.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "KitchenStorageTableViewCell", for: indexPath) as! KitchenStorageTableViewCell
            cell.kitchenStorageCollectionview.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 465
        case 2: return 200
        case 3: return 465
        case 4: return 550
        default: return 44
        }
    }
}
