//
//  SnacksShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class SnacksShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var snacksShopCollectionView: UICollectionView!
    @IBOutlet weak var snacksLabel: UILabel!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        snacksShopCollectionView.register(UINib(nibName: "SnacksShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SnacksShopCollectionViewCell")
        snacksShopCollectionView.delegate = self
        snacksShopCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For SnacksShopTableViewCell
extension SnacksShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return snacksData[snacksShopCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = snacksShopCollectionView.dequeueReusableCell(withReuseIdentifier: "SnacksShopCollectionViewCell", for: indexPath) as! SnacksShopCollectionViewCell
        cell.shopImage.image = UIImage(named: snacksData[snacksShopCollectionView.tag].image[indexPath.row])
        return cell
    }
}
