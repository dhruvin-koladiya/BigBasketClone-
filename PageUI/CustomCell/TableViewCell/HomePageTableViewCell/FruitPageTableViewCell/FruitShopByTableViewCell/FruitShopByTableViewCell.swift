//
//  FruitShopByTableViewCell.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitShopByTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitShopLabel: UILabel!
    @IBOutlet weak var fruitShopCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitShopLabel.setCorner(radious: 8)
        fruitShopLabel.setBorder(width: 1, color: .systemFill)
        fruitShopCollectionView.register(UINib(nibName: "FruitShopByCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FruitShopByCollectionViewCell")
        fruitShopCollectionView.delegate = self
        fruitShopCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FruitShopByTableViewCell
extension FruitShopByTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitsPageData[fruitShopCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fruitShopCollectionView.dequeueReusableCell(withReuseIdentifier: "FruitShopByCollectionViewCell", for: indexPath) as! FruitShopByCollectionViewCell
        cell.fruitShopImage.image = UIImage(named: fruitsPageData[fruitShopCollectionView.tag].image[indexPath.row])
        return cell
    }
}
