//
//  SnacksTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class SnacksTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var snacksLabel: UILabel!
    @IBOutlet weak var snacksCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        snacksLabel.setCorner(radious: 8)
        snacksLabel.setBorder(width: 1, color: .systemFill)
        snacksCollectionView.register(UINib(nibName: "SnacksCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "SnacksCollectionViewCell")
        snacksCollectionView.delegate = self
        snacksCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For SnacksTableViewCell
extension SnacksTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[snacksCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = snacksCollectionView.dequeueReusableCell(withReuseIdentifier: "SnacksCollectionViewCell", for: indexPath) as! SnacksCollectionViewCell
        cell.snacksImage.image = UIImage(named: data[snacksCollectionView.tag].image[indexPath.row])
        return cell
    }
}
