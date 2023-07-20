//
//  GourmetShopTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetShopTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var gourmetShopCollectionview2: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        gourmetShopCollectionview2.register(UINib(nibName: "GourmetShopCollectionviewCell2", bundle: nil), forCellWithReuseIdentifier: "GourmetShopCollectionviewCell2")
        gourmetShopCollectionview2.delegate = self
        gourmetShopCollectionview2.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDataSource Method For GourmetShopTableViewCell2
extension GourmetShopTableViewCell2: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gourmetData[gourmetShopCollectionview2.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = gourmetShopCollectionview2.dequeueReusableCell(withReuseIdentifier: "GourmetShopCollectionviewCell2", for: indexPath) as! GourmetShopCollectionviewCell2
        cell.gourmetImage2.image = UIImage(named: gourmetData[gourmetShopCollectionview2.tag].image[indexPath.row])
        return cell
    }
}

