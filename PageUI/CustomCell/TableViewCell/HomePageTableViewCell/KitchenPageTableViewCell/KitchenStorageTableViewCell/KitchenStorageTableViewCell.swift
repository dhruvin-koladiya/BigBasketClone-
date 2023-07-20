//
//  KitchenStorageTableViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchenStorageTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var storageLabel: UILabel!
    @IBOutlet weak var kitchenStorageCollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        storageLabel.setCorner(radious: 8)
        storageLabel.setBorder(width: 1, color: .systemFill)
        kitchenStorageCollectionview.register(UINib(nibName: "KitchenStorageCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KitchenStorageCollectionViewCell")
        kitchenStorageCollectionview.delegate = self
        kitchenStorageCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For KitchenStorageTableViewCell
extension KitchenStorageTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kitchenData[kitchenStorageCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = kitchenStorageCollectionview.dequeueReusableCell(withReuseIdentifier: "KitchenStorageCollectionViewCell", for: indexPath) as! KitchenStorageCollectionViewCell
        cell.storageImage.image = UIImage(named: kitchenData[kitchenStorageCollectionview.tag].image[indexPath.row])
        return cell
    }
}


