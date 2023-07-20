//
//  CleaningBannerTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 18/04/23.
//

import UIKit

class CleaningBannerTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var cleaningBannerCollectionview: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        cleaningBannerCollectionview.register(UINib(nibName: "CleaningBannerCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "CleaningBannerCollectionViewCell1")
        cleaningBannerCollectionview.delegate = self
        cleaningBannerCollectionview.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = cleaningBannerCollectionview else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            let itemCount = cleaningData[currentItem.section].image.count
            
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For CleaningBannerTableViewCell1
extension CleaningBannerTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return cleaningData[cleaningBannerCollectionview.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = cleaningBannerCollectionview.dequeueReusableCell(withReuseIdentifier: "CleaningBannerCollectionViewCell1", for: indexPath) as! CleaningBannerCollectionViewCell1
        cell.cleaningBannerImage1.image = UIImage(named: cleaningData[cleaningBannerCollectionview.tag].image[indexPath.row])
        return cell
    }
}
