//
//  BeverageCoffeeTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class BeverageCoffeeTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var coffeeLabel: UILabel!
    @IBOutlet weak var coffeeCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        coffeeLabel.setCorner(radious: 8)
        coffeeLabel.setBorder(width: 1, color: .systemFill)
        coffeeCollectionView.register(UINib(nibName: "BeveragesCoffeeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeveragesCoffeeCollectionViewCell")
        coffeeCollectionView.delegate = self
        coffeeCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BeverageCoffeeTableViewCell
extension BeverageCoffeeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beverageData[coffeeCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = coffeeCollectionView.dequeueReusableCell(withReuseIdentifier: "BeveragesCoffeeCollectionViewCell", for: indexPath) as! BeveragesCoffeeCollectionViewCell
        cell.coffeeImage.image = UIImage(named: beverageData[coffeeCollectionView.tag].image[indexPath.row])
        return cell
    }
}

