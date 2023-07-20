//
//  HarDinSastaPageViewController.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

// MARK: - Variable
var harData = [images(image: ["harImage1"]),
               images(image: ["harImage2"]),
               images(image: ["harImage3"]),
               images(image: ["harImage4"]),
               images(image: ["harImage5"]),
               images(image: ["harImage6"]),
               images(image: ["harImage7"])]

class HarDinSastaPageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var harDinTableView: UITableView!
    
    // MARK: - Variable
    var tableViewCell: [String] = ["HarImageTableViewCell1", "HarShopTableViewCell", "HarImageTableViewCell2", "HarImageTableViewCell3", "HarImageTableViewCell4", "HarImageTableViewCell5", "HarImageTableViewCell6"]
    
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
            harDinTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get HarDinSastaPageViewController Page Details
extension HarDinSastaPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return harData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 230
        case 1: return 660
        case 2: return 200
        case 3: return 230
        case 4: return 170
        case 5: return 250
        case 6: return 460
        default: return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarImageTableViewCell1", for: indexPath) as! HarImageTableViewCell1
            cell.image1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarShopTableViewCell", for: indexPath) as! HarShopTableViewCell
            cell.image2.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarImageTableViewCell2", for: indexPath) as! HarImageTableViewCell2
            cell.image3.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarImageTableViewCell3", for: indexPath) as! HarImageTableViewCell3
            cell.image3.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarImageTableViewCell4", for: indexPath) as! HarImageTableViewCell4
            cell.image4.tag = indexPath.section
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarImageTableViewCell5", for: indexPath) as! HarImageTableViewCell5
            cell.image5.tag = indexPath.section
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HarImageTableViewCell6", for: indexPath) as! HarImageTableViewCell6
            cell.image6.tag = indexPath.section
            return cell
        default: return UITableViewCell()
        }
    }
}
