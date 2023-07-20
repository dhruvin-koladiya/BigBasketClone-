//
//  GourmetBeverageTableviewCell.swift
//  PageUI
//
//  Created by ABC on 21/04/23.
//

import UIKit

class GourmetBeverageTableviewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beverageLabel: UILabel!
    @IBOutlet weak var beverageCollectionview: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        beverageLabel.setCorner(radious: 8)
        beverageLabel.setBorder(width: 1, color: .systemFill)
        beverageCollectionview.register(UINib(nibName: "GourmetBeverageCollectionviewCell", bundle: nil), forCellWithReuseIdentifier: "GourmetBeverageCollectionviewCell")
        beverageCollectionview.delegate = self
        beverageCollectionview.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDataSource Method For GourmetBeverageTableviewCell
extension GourmetBeverageTableviewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return gourmetData[beverageCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beverageCollectionview.dequeueReusableCell(withReuseIdentifier: "GourmetBeverageCollectionviewCell", for: indexPath) as! GourmetBeverageCollectionviewCell
        cell.beverageImage.image = UIImage(named: gourmetData[beverageCollectionview.tag].image[indexPath.row])
        return cell
    }
}

