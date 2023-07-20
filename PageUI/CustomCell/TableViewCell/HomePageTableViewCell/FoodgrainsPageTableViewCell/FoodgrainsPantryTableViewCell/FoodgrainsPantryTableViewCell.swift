//
//  FoodgrainsPantryTableViewCell.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsPantryTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var pantryLabel: UILabel!
    @IBOutlet weak var pantryCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        pantryLabel.setCorner(radious: 8)
        pantryLabel.setBorder(width: 1, color: .systemFill)
        pantryCollectionView.register(UINib(nibName: "FoodgrainsPantryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodgrainsPantryCollectionViewCell")
        pantryCollectionView.delegate = self
        pantryCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FoodgrainsPantryTableViewCell

extension FoodgrainsPantryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodgrainsPageData[pantryCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = pantryCollectionView.dequeueReusableCell(withReuseIdentifier: "FoodgrainsPantryCollectionViewCell", for: indexPath) as! FoodgrainsPantryCollectionViewCell
        cell.pantryImage.image = UIImage(named: foodgrainsPageData[pantryCollectionView.tag].image[indexPath.row])
        return cell
    }
}



