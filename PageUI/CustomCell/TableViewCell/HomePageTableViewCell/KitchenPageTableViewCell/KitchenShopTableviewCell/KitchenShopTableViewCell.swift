//
//  KitchenShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var kitchenShopLabel: UILabel!
    @IBOutlet weak var kitchenShopcollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        kitchenShopLabel.setCorner(radious: 8)
        kitchenShopLabel.setBorder(width: 1, color: .systemFill)
        kitchenShopcollectionview.register(UINib(nibName: "KitchenShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KitchenShopCollectionViewCell")
        kitchenShopcollectionview.delegate = self
        kitchenShopcollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For KitchenShopTableViewCell
extension KitchenShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kitchenData[kitchenShopcollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = kitchenShopcollectionview.dequeueReusableCell(withReuseIdentifier: "KitchenShopCollectionViewCell", for: indexPath) as! KitchenShopCollectionViewCell
        cell.kitchenShopImage.image = UIImage(named: kitchenData[kitchenShopcollectionview.tag].image[indexPath.row])
        return cell
    }
}
