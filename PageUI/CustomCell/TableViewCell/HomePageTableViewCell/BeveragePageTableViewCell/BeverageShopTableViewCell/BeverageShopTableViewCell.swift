//
//  BeverageShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beverageShopLabel: UILabel!
    @IBOutlet weak var beverageShopCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageShopLabel.setCorner(radious: 8)
        beverageShopLabel.setBorder(width: 1, color: .systemFill)
        beverageShopCollectionView.register(UINib(nibName: "BeverageShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeverageShopCollectionViewCell")
        beverageShopCollectionView.delegate = self
        beverageShopCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BeverageShopTableViewCell
extension BeverageShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beverageData[beverageShopCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beverageShopCollectionView.dequeueReusableCell(withReuseIdentifier: "BeverageShopCollectionViewCell", for: indexPath) as! BeverageShopCollectionViewCell
        cell.beverageShopImage.image = UIImage(named: beverageData[beverageShopCollectionView.tag].image[indexPath.row])
        return cell
    }
}
