//
//  CleaningTrendingTableViewCell.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningTrendingTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var trendingLabel: UILabel!
    @IBOutlet weak var trendingCollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        trendingLabel.setCorner(radious: 8)
        trendingLabel.setBorder(width: 1, color: .systemFill)
        trendingCollectionview.register(UINib(nibName: "CleaningTrendingCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "CleaningTrendingCollectionViewCell")
        trendingCollectionview.delegate = self
        trendingCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For CleaningTrendingTableViewCell
extension CleaningTrendingTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cleaningData[trendingCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = trendingCollectionview.dequeueReusableCell(withReuseIdentifier: "CleaningTrendingCollectionViewCell", for: indexPath) as! CleaningTrendingCollectionViewCell
        cell.trendingImage.image = UIImage(named: cleaningData[trendingCollectionview.tag].image[indexPath.row])
        return cell
    }
}
