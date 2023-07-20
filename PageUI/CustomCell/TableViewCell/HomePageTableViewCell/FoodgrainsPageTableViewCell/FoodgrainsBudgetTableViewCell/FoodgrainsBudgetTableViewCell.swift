//
//  FoodgrainsBudgetTableViewCell.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsBudgetTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var budgetCollectionView: UICollectionView!
    @IBOutlet weak var budgetLabel: UILabel!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        budgetLabel.setCorner(radious: 8)
        budgetLabel.setBorder(width: 1, color: .systemFill)
        budgetCollectionView.register(UINib(nibName: "FoodgrainsBudgetCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodgrainsBudgetCollectionViewCell")
        budgetCollectionView.delegate = self
        budgetCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FoodgrainsBudgetTableViewCell
extension FoodgrainsBudgetTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodgrainsPageData[budgetCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = budgetCollectionView.dequeueReusableCell(withReuseIdentifier: "FoodgrainsBudgetCollectionViewCell", for: indexPath) as! FoodgrainsBudgetCollectionViewCell
        cell.budgetImage.image = UIImage(named: foodgrainsPageData[budgetCollectionView.tag].image[indexPath.row])
        return cell
    }
}
