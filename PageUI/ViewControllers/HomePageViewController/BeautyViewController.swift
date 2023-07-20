//
//  BeautyViewController.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

// MARK: - Variables
var beautyData = [images(image: ["beautybanner1", "beautyBanner2"]),
                  images(image: ["beautyShop"]),
                  images(image: ["beImage1"]),
                  images(image: ["beImage2"]),
                  images(image: ["beImage3"]),
                  images(image: ["beImage4"]),
                  images(image: ["beImage5"]),
                  images(image: ["beImage6"]),
                  images(image: ["beImage7"]),
                  images(image: ["beImage8"]),
                  images(image: ["bea1", "bea2", "bea3", "bea4"])]


class BeautyViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beautyTableView: UITableView!
    
    // MARK: - Variables
    var tableViewCell: [String] = ["BeautyBannerTableViewCell1", "BeautyShopImageTableViewCell", "BeautyImageTableViewCell1", "BeautyImageTableViewCell2", "BeautyImageTableViewCell3", "BeautyImageTableViewCell4", "BeautyImageTableViewCell5", "BeautyImageTableViewCell6", "BeautyImageTableViewCell7", "BeautyImageTableViewCell8", "BeautyMakeupTableViewCell"]
    
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
            beautyTableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get BeautyViewController Page Details
extension BeautyViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return beautyData.count
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        switch indexPath.section {
        case 0: return 200
        case 1: return 250
        case 2: return 200
        case 3: return 200
        case 4: return 200
        case 5: return 250
        case 6: return 200
        case 7: return 200
        case 8: return 200
        case 9: return 200
        case 10: return 460
        default: return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyBannerTableViewCell1", for: indexPath) as! BeautyBannerTableViewCell1
            cell.beautyBannerCollectionView.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyShopImageTableViewCell", for: indexPath) as! BeautyShopImageTableViewCell
            cell.beautyShopImage.tag = indexPath.section
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell1", for: indexPath) as! BeautyImageTableViewCell1
            cell.beautyImage1.tag = indexPath.section
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell2", for: indexPath) as! BeautyImageTableViewCell2
            cell.beautyImage2.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell3", for: indexPath) as! BeautyImageTableViewCell3
            cell.beautyImage3.tag = indexPath.section
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell4", for: indexPath) as! BeautyImageTableViewCell4
            cell.beautyImage4.tag = indexPath.section
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell5", for: indexPath) as! BeautyImageTableViewCell5
            cell.beautyImage5.tag = indexPath.section
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell6", for: indexPath) as! BeautyImageTableViewCell6
            cell.beautyImage6.tag = indexPath.section
            return cell
        case 8:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell7", for: indexPath) as! BeautyImageTableViewCell7
            cell.beautyImage7.tag = indexPath.section
            return cell
        case 9:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyImageTableViewCell8", for: indexPath) as! BeautyImageTableViewCell8
            cell.beautyImage8.tag = indexPath.section
            return cell
        case 10:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeautyMakeupTableViewCell", for: indexPath) as! BeautyMakeupTableViewCell
            cell.beautyMakeupCollectionView.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
}
