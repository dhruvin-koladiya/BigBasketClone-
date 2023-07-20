//
//  SnacksKitchenTableViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class SnacksKitchenTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var snacksKitchenLabel: UILabel!
    @IBOutlet weak var snacksKitchenCollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        snacksKitchenLabel.setCorner(radious: 8)
        snacksKitchenLabel.setBorder(width: 1, color: .systemFill)
        snacksKitchenCollectionview.register(UINib(nibName: "SnacksKitchenCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SnacksKitchenCollectionViewCell")
        snacksKitchenCollectionview.delegate = self
        snacksKitchenCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For SnacksKitchenTableViewCell
extension SnacksKitchenTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return snacksData[snacksKitchenCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = snacksKitchenCollectionview.dequeueReusableCell(withReuseIdentifier: "SnacksKitchenCollectionViewCell", for: indexPath) as! SnacksKitchenCollectionViewCell
        cell.snacksKitchenImahe.image = UIImage(named: snacksData[snacksKitchenCollectionview.tag].image[indexPath.row])
        return cell
    }
}
