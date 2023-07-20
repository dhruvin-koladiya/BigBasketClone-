//
//  HomeTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class HomeTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var homeLabel: UILabel!
    @IBOutlet weak var homeCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        homeLabel.setCorner(radious: 8)
        homeLabel.setBorder(width: 1, color: .systemFill)
        homeCollectionView.register(UINib(nibName: "HomeCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "HomeCollectionViewCell")
        homeCollectionView.delegate = self
        homeCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For HomeTableViewCell
extension HomeTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[homeCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = homeCollectionView.dequeueReusableCell(withReuseIdentifier: "HomeCollectionViewCell", for: indexPath) as! HomeCollectionViewCell
        cell.homeImage.image = UIImage(named: data[homeCollectionView.tag].image[indexPath.row])
        return cell
    }
}
