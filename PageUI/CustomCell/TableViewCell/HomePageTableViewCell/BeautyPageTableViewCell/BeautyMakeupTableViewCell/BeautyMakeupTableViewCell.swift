//
//  BeautyMakeupTableViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class BeautyMakeupTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beautyLabel: UILabel!
    @IBOutlet weak var beautyMakeupCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beautyLabel.setCorner(radious: 8)
        beautyLabel.setBorder(width: 1, color: .systemFill)
        beautyMakeupCollectionView.register(UINib(nibName: "BeautyMakeupCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeautyMakeupCollectionViewCell")
        beautyMakeupCollectionView.delegate = self
        beautyMakeupCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For SnacksKitchenTableViewCell
extension BeautyMakeupTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beautyData[beautyMakeupCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beautyMakeupCollectionView.dequeueReusableCell(withReuseIdentifier: "BeautyMakeupCollectionViewCell", for: indexPath) as! BeautyMakeupCollectionViewCell
        cell.beautyMakeupImage.image = UIImage(named: beautyData[beautyMakeupCollectionView.tag].image[indexPath.row])
        cell.setCorner(radious: 5)
        cell.setBorder(width: 1, color: .systemFill)
        return cell
    }
}
