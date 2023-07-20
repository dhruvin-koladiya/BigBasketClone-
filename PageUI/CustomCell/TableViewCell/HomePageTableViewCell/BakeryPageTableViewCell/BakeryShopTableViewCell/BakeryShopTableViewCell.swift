//
//  BakeryShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class BakeryShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bakeryShopLabel: UILabel!
    @IBOutlet weak var bakeryShopcollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bakeryShopLabel.setCorner(radious: 8)
        bakeryShopLabel.setBorder(width: 1, color: .systemFill)
        bakeryShopcollectionView.register(UINib(nibName: "BakeryShopCollectionviewCell", bundle: nil), forCellWithReuseIdentifier: "BakeryShopCollectionviewCell")
        bakeryShopcollectionView.delegate = self
        bakeryShopcollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BakeryShopTableViewCell
extension BakeryShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bakeryData[bakeryShopcollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bakeryShopcollectionView.dequeueReusableCell(withReuseIdentifier: "BakeryShopCollectionviewCell", for: indexPath) as! BakeryShopCollectionviewCell
        cell.shopImage.image = UIImage(named: bakeryData[bakeryShopcollectionView.tag].image[indexPath.row])
        return cell
    }
}
