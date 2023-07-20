//
//  BakeryShopTableViewCell2.swift
//  PageUI
//
//  Created by R82 on 21/04/23.
//

import UIKit

class BakeryShopTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bakeryshopCollectionView2: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bakeryshopCollectionView2.register(UINib(nibName: "BakeryShopCollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "BakeryShopCollectionViewCell2")
        bakeryshopCollectionView2.delegate = self
        bakeryshopCollectionView2.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BakeryShopTableViewCell2
extension BakeryShopTableViewCell2: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bakeryData[bakeryshopCollectionView2.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bakeryshopCollectionView2.dequeueReusableCell(withReuseIdentifier: "BakeryShopCollectionViewCell2", for: indexPath) as! BakeryShopCollectionViewCell2
        cell.shopImage2.image = UIImage(named: bakeryData[bakeryshopCollectionView2.tag].image[indexPath.row])
        return cell
    }
}
