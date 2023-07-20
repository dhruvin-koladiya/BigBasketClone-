//
//  BeverageTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BeverageTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beverageLabel: UILabel!
    @IBOutlet weak var beverageCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageLabel.setCorner(radious: 8)
        beverageLabel.setBorder(width: 1, color: .systemFill)
        beverageCollectionView.register(UINib(nibName: "BeveragesCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BeveragesCollectionViewCell")
        beverageCollectionView.delegate = self
        beverageCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BeverageTableViewCell
extension BeverageTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[beverageCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beverageCollectionView.dequeueReusableCell(withReuseIdentifier: "BeveragesCollectionViewCell", for: indexPath) as! BeveragesCollectionViewCell
        cell.beverageImage.image = UIImage(named: data[beverageCollectionView.tag].image[indexPath.row])
        return cell
    }
}
