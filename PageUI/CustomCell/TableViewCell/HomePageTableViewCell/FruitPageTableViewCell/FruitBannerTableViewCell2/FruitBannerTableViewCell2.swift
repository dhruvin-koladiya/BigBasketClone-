//
//  FruitBannerTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitBannerTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitCollectionview2: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        fruitCollectionview2.register(UINib(nibName: "FruitBannerCollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "FruitBannerCollectionViewCell2")
        fruitCollectionview2.delegate = self
        fruitCollectionview2.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = fruitCollectionview2 else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            let itemCount = fruitsPageData[currentItem.section].image.count
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FruitBannerTableViewCell2
extension FruitBannerTableViewCell2: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitsPageData[fruitCollectionview2.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fruitCollectionview2.dequeueReusableCell(withReuseIdentifier: "FruitBannerCollectionViewCell2", for: indexPath) as! FruitBannerCollectionViewCell2
        cell.fruitBanner2.image = UIImage(named: fruitsPageData[fruitCollectionview2.tag].image[indexPath.row])
        return cell
    }
}
