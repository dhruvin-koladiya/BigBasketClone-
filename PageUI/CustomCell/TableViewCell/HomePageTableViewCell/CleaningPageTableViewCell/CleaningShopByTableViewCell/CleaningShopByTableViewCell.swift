//
//  CleaningShopByTableViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningShopByTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var cleaningLabel: UILabel!
    @IBOutlet weak var cleaningShopCollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        cleaningLabel.setCorner(radious: 8)
        cleaningLabel.setBorder(width: 1, color: .systemFill)
        cleaningShopCollectionview.register(UINib(nibName: "CleaningShopByCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CleaningShopByCollectionViewCell")
        cleaningShopCollectionview.delegate = self
        cleaningShopCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For CleaningShopByTableViewCell
extension CleaningShopByTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cleaningData[cleaningShopCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cleaningShopCollectionview.dequeueReusableCell(withReuseIdentifier: "CleaningShopByCollectionViewCell", for: indexPath) as! CleaningShopByCollectionViewCell
        cell.cleaningShopImage.image = UIImage(named: cleaningData[cleaningShopCollectionview.tag].image[indexPath.row])
        return cell
    }
}
