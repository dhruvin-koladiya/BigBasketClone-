//
//  FruitAllTimeTableViewCell.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitAllTimeTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitAllLabel: UILabel!
    @IBOutlet weak var fruitAllCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitAllLabel.setCorner(radious: 8)
        fruitAllLabel.setBorder(width: 1, color: .systemFill)
        fruitAllCollectionView.register(UINib(nibName: "FruitAllCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FruitAllCollectionViewCell")
        fruitAllCollectionView.delegate = self
        fruitAllCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FruitAllTimeTableViewCell
extension FruitAllTimeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitsPageData[fruitAllCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fruitAllCollectionView.dequeueReusableCell(withReuseIdentifier: "FruitAllCollectionViewCell", for: indexPath) as! FruitAllCollectionViewCell
        cell.fruitAllImage.image = UIImage(named: fruitsPageData[fruitAllCollectionView.tag].image[indexPath.row])
        return cell
    }
}
