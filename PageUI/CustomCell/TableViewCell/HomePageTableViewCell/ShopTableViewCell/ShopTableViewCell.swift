//
//  ShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var shopLabel: UILabel!
    @IBOutlet weak var shopCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopLabel.setCorner(radious: 8)
        shopLabel.setBorder(width: 1, color: .systemFill)
        shopCollectionView.register(UINib(nibName: "ShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ShopCollectionViewCell")
        shopCollectionView.delegate = self
        shopCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For ShopTableViewCell
extension ShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[shopCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = shopCollectionView.dequeueReusableCell(withReuseIdentifier: "ShopCollectionViewCell", for: indexPath) as! ShopCollectionViewCell
        cell.shopImage.image = UIImage(named: data[shopCollectionView.tag].image[indexPath.row])
        return cell
    }
}
