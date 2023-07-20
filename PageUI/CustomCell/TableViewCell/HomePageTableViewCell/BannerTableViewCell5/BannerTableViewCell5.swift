//
//  BannerTableViewCell5.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerTableViewCell5: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bannerCollectionView5: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        bannerCollectionView5.register(UINib(nibName: "BannerCollectionViewCell5", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell5")
        bannerCollectionView5.delegate = self
        bannerCollectionView5.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BannerTableViewCell5
extension BannerTableViewCell5: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[bannerCollectionView5.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView5.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell5", for: indexPath) as! BannerCollectionViewCell5
        cell.bannerImage5.image = UIImage(named: data[bannerCollectionView5.tag].image[indexPath.row])
        return cell
    }
}
