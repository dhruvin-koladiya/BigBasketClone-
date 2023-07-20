//
//  GourmetPageViewController.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

// MARK: - Variable
var gourmetData = [images(image: ["gourmetImage1"]),
                   images(image: ["go1", "go2", "go3", "go4", "go5", "go6"]),
                   images(image: ["gou1", "gou2", "gou3", "gou4"]),
                   images(image: ["gourmetImage2"]),
                   images(image: ["gourmet1", "gourmet2", "gourmet3", "gourmet4"])]

class GourmetPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var gourmetTableView: UITableView!
    
    // MARK: - Variable
    var tableViewCell: [String] = ["GourmetImageTableViewCell1", "GourmetShopTableViewCell", "GourmetShopTableViewCell2", "GourmetImageTableViewCell2" , "GourmetBeverageTableviewCell"]
    
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
            gourmetTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get GourmetPageViewController Page Details
extension GourmetPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return gourmetData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GourmetImageTableViewCell1", for: indexPath) as! GourmetImageTableViewCell1
            cell.gourmetImage1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GourmetShopTableViewCell", for: indexPath) as! GourmetShopTableViewCell
            cell.gourmetShopCollectionView.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GourmetShopTableViewCell2", for: indexPath) as! GourmetShopTableViewCell2
            cell.gourmetShopCollectionview2.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GourmetImageTableViewCell2", for: indexPath) as! GourmetImageTableViewCell2
            cell.gourmetImagess.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "GourmetBeverageTableviewCell", for: indexPath) as! GourmetBeverageTableviewCell
            cell.beverageCollectionview.tag = indexPath.section
            return cell
            
        default: return UITableViewCell()
        }
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 660
        case 2:  return 400
        case 3: return 200
        case 4:  return 460
        default: return 44
        }
    }
}
