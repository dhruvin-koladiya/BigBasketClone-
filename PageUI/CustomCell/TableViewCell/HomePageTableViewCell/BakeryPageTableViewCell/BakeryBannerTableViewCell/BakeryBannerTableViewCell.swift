//
//  BakeryBannerTableViewCell.swift
//  PageUI
//
//  Created by ABC on 19/04/23.
//

import UIKit

class BakeryBannerTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bakeryBannerCollectionViewCell: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        bakeryBannerCollectionViewCell.register(UINib(nibName: "BakeryBannerCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "BakeryBannerCollectionViewCell")
        bakeryBannerCollectionViewCell.delegate = self
        bakeryBannerCollectionViewCell.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = bakeryBannerCollectionViewCell else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            let itemCount = bakeryData[currentItem.section].image.count
            
            var nextItem = currentItem.item + 1
            if nextItem >= itemCount {
                nextItem = 0
            }
            
            let nextIndexPath = IndexPath(item: nextItem, section: currentItem.section)
            collectionView.scrollToItem(at: nextIndexPath, at: .centeredHorizontally, animated: true)
        }
    }
    
    private func stopAutomaticScrolling() {
        timer?.invalidate()
        timer = nil
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BakeryBannerTableViewCell
extension BakeryBannerTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return bakeryData[bakeryBannerCollectionViewCell.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bakeryBannerCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "BakeryBannerCollectionViewCell", for: indexPath) as! BakeryBannerCollectionViewCell
        cell.bakeryBannerImage.image = UIImage(named: bakeryData[bakeryBannerCollectionViewCell.tag].image[indexPath.row])
        return cell
    }
}
