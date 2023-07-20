//
//  FruitPageBannerTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

class FruitPageBannerTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var fruitBannerCollectionView1: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        fruitBannerCollectionView1.register(UINib(nibName: "FruitBannerCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "FruitBannerCollectionViewCell1")
        fruitBannerCollectionView1.delegate = self
        fruitBannerCollectionView1.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = fruitBannerCollectionView1 else { return }
        
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FruitPageBannerTableViewCell1
extension FruitPageBannerTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return fruitsPageData[fruitBannerCollectionView1.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = fruitBannerCollectionView1.dequeueReusableCell(withReuseIdentifier: "FruitBannerCollectionViewCell1", for: indexPath) as! FruitBannerCollectionViewCell1
        cell.fruitBanner1.image = UIImage(named: fruitsPageData[fruitBannerCollectionView1.tag].image[indexPath.row])
        return cell
    }
}
