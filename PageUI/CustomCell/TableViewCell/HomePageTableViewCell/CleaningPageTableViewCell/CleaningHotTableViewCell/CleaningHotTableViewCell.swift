//
//  CleaningHotTableViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningHotTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var hotLabel: UILabel!
    @IBOutlet weak var hotCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        hotLabel.setCorner(radious: 8)
        hotLabel.setBorder(width: 1, color: .systemFill)
        hotCollectionView.register(UINib(nibName: "CleaningHotCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CleaningHotCollectionViewCell")
        hotCollectionView.delegate = self
        hotCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For CleaningHotTableViewCell
extension CleaningHotTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cleaningData[hotCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = hotCollectionView.dequeueReusableCell(withReuseIdentifier: "CleaningHotCollectionViewCell", for: indexPath) as! CleaningHotCollectionViewCell
        cell.hotImage.image = UIImage(named: cleaningData[hotCollectionView.tag].image[indexPath.row])
        return cell
    }
}
