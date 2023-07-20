//
//  MyListViewController.swift
//  PageUI
//
//  Created by ABC on 28/02/23.
//

import UIKit

class MyListViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var containerView1: UIView!
    @IBOutlet weak var containerView2: UIView!
    @IBOutlet weak var containerView3: UIView!
    @IBOutlet weak var containerView4: UIView!
    @IBOutlet weak var containerView5: UIView!
    @IBOutlet weak var containerView6: UIView!
    @IBOutlet weak var containerView7: UIView!
    @IBOutlet weak var containerView8: UIView!
    @IBOutlet weak var containerView9: UIView!
    @IBOutlet weak var containerView10: UIView!
    @IBOutlet weak var containerView11: UIView!
    @IBOutlet weak var containerView12: UIView!
    @IBOutlet weak var containerView13: UIView!
    @IBOutlet weak var buttonCollectionView: UICollectionView!
    
    // MARK: - Variables
    var arrTitle: [String] = ["ALL", "Fruits & Vegetables", "Foodgrains, oil & Masala", "snacks & Branded Foods", "Beauty & Hygiene", "Cleaning & Household", "Bakery, Cakes & Dairy", "Beverages", "Kitchen, Garden & Pety", "Gourmet & World Food", "Eggs, Meat & Fish", "Baby care"]
    var selectedIndex: Int = 0
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setIndex(index: 0)
    }
    
    // MARK: - Initialization
    private func setIndex(index: Int) {
        switch index {
        case 0:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = false
            containerView13.isHidden = true
        case 1:
            containerView1.isHidden = false
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 2:
            containerView1.isHidden = true
            containerView2.isHidden = false
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 3:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = false
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 4:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = false
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13?.isHidden = true
        case 5:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = false
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 6:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = false
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 7:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = false
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13?.isHidden = true
        case 8:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = false
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 9:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = false
            containerView10.isHidden = true
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13?.isHidden = true
        case 10:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = false
            containerView11.isHidden = true
            containerView12.isHidden = true
            containerView13.isHidden = true
        case 11:
            containerView1.isHidden = true
            containerView2.isHidden = true
            containerView3.isHidden = true
            containerView4.isHidden = true
            containerView5.isHidden = true
            containerView6.isHidden = true
            containerView7.isHidden = true
            containerView8.isHidden = true
            containerView9.isHidden = true
            containerView10.isHidden = true
            containerView11.isHidden = false
            containerView12.isHidden = true
            containerView13.isHidden = true
        default:
            break
        }
    }
}

// MARK: - UICollectionViewDataSource And UICollectionViewDelegate Method For MyListViewController
extension MyListViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return arrTitle.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        var  cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ButtonCollectionViewCell
        cell.titleLabel.text = arrTitle[indexPath.row]
        cell.layer.cornerRadius = 5
        cell.layer.masksToBounds = true
        cell.layer.borderWidth = 1
        cell.layer.borderColor = UIColor.white.cgColor
        cell.titleLabel.layer.cornerRadius = 5
        cell.titleLabel.layer.masksToBounds = true
        cell.titleLabel.layer.borderWidth = 1
        cell.titleLabel.layer.borderColor = UIColor.white.cgColor
        if selectedIndex == indexPath.row {
            cell.titleLabel.textColor = UIColor.red
        } else {
            cell.titleLabel.textColor = UIColor.black
        }
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        setIndex(index: indexPath.item)
        selectedIndex = indexPath.row
        self.buttonCollectionView.reloadData()
    }
}



