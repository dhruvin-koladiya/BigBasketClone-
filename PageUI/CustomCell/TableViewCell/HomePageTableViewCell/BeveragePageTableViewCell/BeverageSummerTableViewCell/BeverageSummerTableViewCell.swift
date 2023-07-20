//
//  BeverageSummerTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageSummerTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var summerLabel: UILabel!
    @IBOutlet weak var summerCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        summerLabel.setCorner(radious: 8)
        summerLabel.setBorder(width: 1, color: .systemFill)
        summerCollectionView.register(UINib(nibName: "BeverageSummerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeverageSummerCollectionViewCell")
        summerCollectionView.delegate = self
        summerCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BeverageSummerTableViewCell
extension BeverageSummerTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beverageData[summerCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = summerCollectionView.dequeueReusableCell(withReuseIdentifier: "BeverageSummerCollectionViewCell", for: indexPath) as! BeverageSummerCollectionViewCell
        cell.summerImage.image = UIImage(named: beverageData[summerCollectionView.tag].image[indexPath.row])
        return cell
    }
}

