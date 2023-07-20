//
//  KitchencookwareTableViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class KitchencookwareTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var cookwareLabel: UILabel!
    @IBOutlet weak var cookwareCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        cookwareLabel.setCorner(radious: 8)
        cookwareLabel.setBorder(width: 1, color: .systemFill)
        cookwareCollectionView.register(UINib(nibName: "KitchenCookwareCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "KitchenCookwareCollectionViewCell")
        cookwareCollectionView.delegate = self
        cookwareCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For KitchencookwareTableViewCell
extension KitchencookwareTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return kitchenData[cookwareCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cookwareCollectionView.dequeueReusableCell(withReuseIdentifier: "KitchenCookwareCollectionViewCell", for: indexPath) as! KitchenCookwareCollectionViewCell
        cell.cookwareImage.image = UIImage(named: kitchenData[cookwareCollectionView.tag].image[indexPath.row])
        return cell
    }
}
