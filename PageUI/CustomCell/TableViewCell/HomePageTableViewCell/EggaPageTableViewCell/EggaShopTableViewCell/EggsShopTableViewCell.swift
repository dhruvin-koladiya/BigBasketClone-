//
//  EggsShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var eggsLabel: UILabel!
    @IBOutlet weak var eggsShopCollectionview: UICollectionView!
    override func awakeFromNib() {
        super.awakeFromNib()
        eggsLabel.setCorner(radious: 8)
        eggsLabel.setBorder(width: 1, color: .systemFill)
        eggsShopCollectionview.register(UINib(nibName: "EggsShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EggsShopCollectionViewCell")
        eggsShopCollectionview.delegate = self
        eggsShopCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For EggsShopTableViewCell
extension EggsShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eggsData[eggsShopCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = eggsShopCollectionview.dequeueReusableCell(withReuseIdentifier: "EggsShopCollectionViewCell", for: indexPath) as! EggsShopCollectionViewCell
        cell.eggsShopImage.image = UIImage(named: eggsData[eggsShopCollectionview.tag].image[indexPath.row])
        return cell
    }
}
