//
//  BabyShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BabyShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var shopLabel: UILabel!
    @IBOutlet weak var babyCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopLabel.setCorner(radious: 8)
        shopLabel.setBorder(width: 1, color: .systemFill)
        babyCollectionView.register(UINib(nibName: "BabyShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BabyShopCollectionViewCell")
        babyCollectionView.delegate = self
        babyCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDataSource Method For BabyShopTableViewCell
extension BabyShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return babyData[babyCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = babyCollectionView.dequeueReusableCell(withReuseIdentifier: "BabyShopCollectionViewCell", for: indexPath) as! BabyShopCollectionViewCell
        cell.shopImage.image = UIImage(named: babyData[babyCollectionView.tag].image[indexPath.row])
        return cell
    }
}

