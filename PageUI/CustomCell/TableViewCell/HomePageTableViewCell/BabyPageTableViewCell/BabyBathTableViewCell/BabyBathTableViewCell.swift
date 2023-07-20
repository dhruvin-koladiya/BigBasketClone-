//
//  BabyBathTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BabyBathTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bathLabel: UILabel!
    @IBOutlet weak var babyBathCollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bathLabel.setCorner(radious: 8)
        bathLabel.setBorder(width: 1, color: .systemFill)
        babyBathCollectionview.register(UINib(nibName: "BabyBathCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BabyBathCollectionViewCell")
        babyBathCollectionview.delegate = self
        babyBathCollectionview.dataSource = self
        
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDataSource Method For BabyBathTableViewCell
extension BabyBathTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return babyData[babyBathCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = babyBathCollectionview.dequeueReusableCell(withReuseIdentifier: "BabyBathCollectionViewCell", for: indexPath) as! BabyBathCollectionViewCell
        cell.bathImage.image = UIImage(named: babyData[babyBathCollectionview.tag].image[indexPath.row])
        return cell
    }
}
