//
//  EggaMeatViewController.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

// MARK: - Variables
var eggsData = [images(image: ["eg1", "eg2", "eg3"]),
                images(image: ["egg1", "egg2", "egg3", "egg4", "egg5", "egg6", "egg7", "egg8", "egg9"]),
                images(image: ["eggsImages"]),
                images(image: ["eggs1", "eggs2", "eggs3"])]

class EggaMeatViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var eggsTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["EggsBannerTableViewCell1", "EggsShopTableViewCell", "EggsImageTableViewCell", "EggsMeatyTableViewCell"]
    
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
    
    @IBAction func nextPageButtonClicked(_ sender: UIButton) {
        navigationController?.popViewController(animated: true)
    }
    
    private func setup() {
        config()
    }
    
    private func config() {
        tableViewCell.forEach { cellName in
            eggsTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get EggaMeatViewController Page Details
extension EggaMeatViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return eggsData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 465
        case 2: return 200
        case 3: return 280
        default: return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "EggsBannerTableViewCell1", for: indexPath) as! EggsBannerTableViewCell1
            cell.eggaBannerCollectionView1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "EggsShopTableViewCell", for: indexPath) as! EggsShopTableViewCell
            cell.eggsShopCollectionview.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "EggsImageTableViewCell", for: indexPath) as! EggsImageTableViewCell
            cell.eggsImages1.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "EggsMeatyTableViewCell", for: indexPath) as! EggsMeatyTableViewCell
            cell.eggsMeatyCollectionViewCell.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
}
