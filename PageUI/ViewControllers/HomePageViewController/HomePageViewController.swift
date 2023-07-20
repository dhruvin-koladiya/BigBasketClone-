//
//  TableHomeViewController.swift
//  PageUI
//
//  Created by ABC on 08/04/23.
//

import UIKit

// MARK: - Variables
var data = [images(image: ["sc1", "s1", "scrool3", "sc4", "images5"]),
            images(image: ["i1", "i2", "i3", "i4", "i5", "i6", "i7", "i8", "i9", "i10", "i11", "i12"]),
            images(image: ["basketImage"]),
            images(image: ["scrool1", "scrool2", "scrool3", "scrool4", "scrool5"]),
            images(image: ["image4"]),
            images (image: ["s1", "s2", "s3", "s4", "s5"]),
            images(image: ["image2"]),
            images(image: ["a1", "a2", "a3", "a4"]),
            images(image:  ["x4", "sc2", "sc3", "sc4", "sc5"]),
            images(image: ["b1", "b2", "b3", "b4", "b5", "b6"]),
            images(image: ["image"]),
            images(image:  ["e1", "e2", "e3", "e4"]),
            images(image: ["im11"]),
            images(image: ["f1", "f2", "f3", "f4", "f5", "f6"]),
            images(image: ["image7"]),
            images(image: ["g1", "g2", "g3", "g4"]),
            images(image: ["q1", "q2", "q3", "q4", "q5", "q6"]),
            images(image: ["vendor"])]

class HomePageViewController: UIViewController, SideBarViewControllerDelegate {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var menuButton: UIButton!
    @IBOutlet weak var headView: UIView!
    @IBOutlet weak var backView: UIView!
    @IBOutlet weak var searchBarView: UISearchBar!
    @IBOutlet weak var hamutgerViewLeading: NSLayoutConstraint!
    @IBOutlet weak var ContainerView: UIView!
    
    // MARK: - Variables
    private var isHamburgerMenuShown:Bool = false
    var BannerTableViewCell1: UITableViewCell!
    var tableViewCell: [String] = ["BannerTableViewCell1", "ShopCategoryTableViewCell", "ImageViewTableViewCell", "BannerTableViewCell2", "ImageTableViewCell2", "BannerTableViewCell3", "ImageTableViewCell3", "FruitsTableViewCell", "BannerTableViewCell4", "BeverageTableViewCell", "ImageTableViewCell4", "SnacksTableViewCell", "ImageTableViewCell5", "HomeTableViewCell", "ImageTableViewCell6", "BannerTableViewCell5", "ShopTableViewCell", "VendorTableViewCell", "TableViewCell"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backView.isHidden = true
        setup()
        searchBarView.setCorner(radious: 10)
        
    }
    
    // MARK: - Life Cycle Method
    private func setup() {
        configure()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
    
    @IBAction func menuButtonTapped(_ sender: Any) {
        UIView.animate(withDuration: 0.1) {
            self.hamutgerViewLeading.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backView.alpha = 0.75
            self.backView.isHidden = false
            self.tabBarController?.tabBar.isHidden = true
            UIView.animate(withDuration: 0.1) {
                self.hamutgerViewLeading.constant = 0
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.isHamburgerMenuShown = true
            }
        }
        self.backView.isHidden = false
    }
    
    @IBAction func tapGesture(_ sender: Any) {
        self.hideHamburgerView()
    }
    
    internal func hideHamburgerView()
    {
        UIView.animate(withDuration: 0.1) {
            self.hamutgerViewLeading.constant = 10
            self.view.layoutIfNeeded()
        } completion: { (status) in
            self.backView.alpha = 0.0
            UIView.animate(withDuration: 0.1) {
                self.hamutgerViewLeading.constant = -300
                self.view.layoutIfNeeded()
            } completion: { (status) in
                self.backView.isHidden = true
                self.isHamburgerMenuShown = false
                self.tabBarController?.tabBar.isHidden = false
            }
        }
    }
    
    private func configure() {
        tableViewCell.forEach { cellName in
            tableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
    }
}

// MARK: - Get HomePageViewController Page Details
extension HomePageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        
        switch indexPath.section {
        case 0: return 200
        case 1: return 580
        case 2: return 125
        case 3: return 200
        case 4: return 200
        case 5: return 200
        case 6: return 200
        case 7: return 460
        case 8: return 200
        case 9: return 675
        case 10: return 200
        case 11: return 460
        case 12: return 200
        case 13: return 660
        case 14: return 200
        case 15: return 220
        case 16: return 330
        case 17: return 280
        default: return 44
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        switch indexPath.section {
        case 0:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell1", for: indexPath) as! BannerTableViewCell1
            cell.bannerCollectionView1.tag = indexPath.section
            return cell
        case 1:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopCategoryTableViewCell", for: indexPath) as! ShopCategoryTableViewCell
            cell.shopCategoryCollectionView.tag = indexPath.section
            cell.selectionStyle = .none
            return cell
        case 2:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageViewTableViewCell", for: indexPath) as! ImageViewTableViewCell
            cell.imagesView.tag = indexPath.section
            cell.selectionStyle = .none
            return cell
        case 3:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell2", for: indexPath) as! BannerTableViewCell2
            cell.bannerCollectionView2.tag = indexPath.section
            return cell
        case 4:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell2", for: indexPath) as! ImageTableViewCell2
            cell.imagesView2.tag = indexPath.section
            cell.selectionStyle = .none
            return cell
        case 5:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell3", for: indexPath) as! BannerTableViewCell3
            cell.bannerCollectionView3.tag = indexPath.section
            return cell
        case 6:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell3", for: indexPath) as! ImageTableViewCell3
            cell.imagesView3.tag = indexPath.section
            cell.selectionStyle = .none
            return cell
        case 7:
            let cell = tableView.dequeueReusableCell(withIdentifier: "FruitsTableViewCell", for: indexPath) as! FruitsTableViewCell
            cell.fruitsCollectionView.tag = indexPath.section
            cell.selectionStyle = .none
            return cell
        case 8:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell4", for: indexPath) as! BannerTableViewCell4
            cell.bannerCollectionView4.tag = indexPath.section
            return cell
        case 9:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BeverageTableViewCell", for: indexPath) as! BeverageTableViewCell
            cell.beverageCollectionView.tag = indexPath.section
            return cell
        case 10:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell4", for: indexPath) as! ImageTableViewCell4
            cell.imageView4.tag = indexPath.section
            return cell
        case 11:
            let cell = tableView.dequeueReusableCell(withIdentifier: "SnacksTableViewCell", for: indexPath) as! SnacksTableViewCell
            cell.snacksCollectionView.tag = indexPath.section
            return cell
        case 12:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell5", for: indexPath) as! ImageTableViewCell5
            cell.imageView5.tag = indexPath.section
            return cell
        case 13:
            let cell = tableView.dequeueReusableCell(withIdentifier: "HomeTableViewCell", for: indexPath) as! HomeTableViewCell
            cell.homeCollectionView.tag = indexPath.section
            return cell
        case 14:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ImageTableViewCell6", for: indexPath) as! ImageTableViewCell6
            cell.imageView6.tag = indexPath.section
            return cell
        case 15:
            let cell = tableView.dequeueReusableCell(withIdentifier: "BannerTableViewCell5", for: indexPath) as! BannerTableViewCell5
            cell.bannerCollectionView5.tag = indexPath.section
            return cell
        case 16:
            let cell = tableView.dequeueReusableCell(withIdentifier: "ShopTableViewCell", for: indexPath) as! ShopTableViewCell
            cell.shopCollectionView.tag = indexPath.section
            return cell
        case 17:
            let cell = tableView.dequeueReusableCell(withIdentifier: "VendorTableViewCell", for: indexPath) as! VendorTableViewCell
            cell.vendorImage.tag = indexPath.section
            return cell
        default:
            return UITableViewCell()
        }
    }
}




