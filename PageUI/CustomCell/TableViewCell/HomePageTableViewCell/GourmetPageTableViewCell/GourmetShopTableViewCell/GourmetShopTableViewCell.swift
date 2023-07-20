//
//  GourmetShopTableViewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetShopTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var shopLabel: UILabel!
    @IBOutlet weak var gourmetShopCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopLabel.setCorner(radious: 8)
        shopLabel.setBorder(width: 1, color: .systemFill)
        gourmetShopCollectionView.register(UINib(nibName: "GourmetShopCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "GourmetShopCollectionViewCell")
        gourmetShopCollectionView.delegate = self
        gourmetShopCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDataSource Method For GourmetShopTableViewCell
extension GourmetShopTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gourmetData[gourmetShopCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = gourmetShopCollectionView.dequeueReusableCell(withReuseIdentifier: "GourmetShopCollectionViewCell", for: indexPath) as! GourmetShopCollectionViewCell
        cell.gourmetShopImage.image = UIImage(named: gourmetData[gourmetShopCollectionView.tag].image[indexPath.row])
        return cell
    }
}

