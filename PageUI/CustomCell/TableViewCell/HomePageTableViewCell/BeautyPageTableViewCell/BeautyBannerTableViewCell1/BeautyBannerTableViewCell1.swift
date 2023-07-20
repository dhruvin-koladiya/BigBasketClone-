//
//  BeautyBannerTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class BeautyBannerTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var beautyBannerCollectionView: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        beautyBannerCollectionView.register(UINib(nibName: "BeautyBannerCollecrtionViewCell1", bundle: nil), forCellWithReuseIdentifier: "BeautyBannerCollecrtionViewCell1")
        beautyBannerCollectionView.delegate = self
        beautyBannerCollectionView.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = beautyBannerCollectionView else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            let itemCount = beautyData[currentItem.section].image.count
            
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For SnacksKitchenTableViewCell
extension BeautyBannerTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return beautyData[beautyBannerCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = beautyBannerCollectionView.dequeueReusableCell(withReuseIdentifier: "BeautyBannerCollecrtionViewCell1", for: indexPath) as! BeautyBannerCollecrtionViewCell1
        cell.bannerImage1.image = UIImage(named: beautyData[beautyBannerCollectionView.tag].image[indexPath.row])
        return cell
    }
}
