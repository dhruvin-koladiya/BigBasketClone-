//
//  FruitsTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class FruitsTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitsLabel: UILabel!
    @IBOutlet weak var fruitsCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        fruitsLabel.setCorner(radious: 8)
        fruitsLabel.setBorder(width: 1, color: .systemFill)
        fruitsCollectionView.register(UINib(nibName: "FruitsCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FruitsCollectionViewCell")
        fruitsCollectionView.delegate = self
        fruitsCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FruitsTableViewCell
extension FruitsTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[fruitsCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fruitsCollectionView.dequeueReusableCell(withReuseIdentifier: "FruitsCollectionViewCell", for: indexPath) as! FruitsCollectionViewCell
        cell.fruitsImage.image = UIImage(named: data[fruitsCollectionView.tag].image[indexPath.row])
        return cell
    }
}
