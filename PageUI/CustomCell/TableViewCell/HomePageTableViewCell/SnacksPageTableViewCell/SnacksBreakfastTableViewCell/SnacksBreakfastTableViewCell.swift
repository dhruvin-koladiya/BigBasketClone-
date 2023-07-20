//
//  SnacksBreakfastTableViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class SnacksBreakfastTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var snacksBrakfastCollectionview: UICollectionView!
    @IBOutlet weak var breakfastLabel: UILabel!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        breakfastLabel.setCorner(radious: 8)
        breakfastLabel.setBorder(width: 1, color: .systemFill)
        snacksBrakfastCollectionview.register(UINib(nibName: "SnacksBreakfastCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SnacksBreakfastCollectionViewCell")
        snacksBrakfastCollectionview.delegate = self
        snacksBrakfastCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For SnacksBreakfastTableViewCell
extension SnacksBreakfastTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return snacksData[snacksBrakfastCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = snacksBrakfastCollectionview.dequeueReusableCell(withReuseIdentifier: "SnacksBreakfastCollectionViewCell", for: indexPath) as! SnacksBreakfastCollectionViewCell
        cell.breakfastImage.image = UIImage(named: snacksData[snacksBrakfastCollectionview.tag].image[indexPath.row])
        return cell
    }
}
