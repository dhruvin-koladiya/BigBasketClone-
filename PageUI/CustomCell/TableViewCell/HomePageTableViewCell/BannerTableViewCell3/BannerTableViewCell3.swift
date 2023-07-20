//
//  BannerTableViewCell3.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerTableViewCell3: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bannerCollectionView3: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        bannerCollectionView3.register(UINib(nibName: "BannerCollectionViewCell3", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell3")
        bannerCollectionView3.delegate = self
        bannerCollectionView3.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = bannerCollectionView3 else { return }
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            var nextItem = currentItem.item + 1
            if nextItem >= data[bannerCollectionView3.tag].image.count {
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BannerTableViewCell3
extension BannerTableViewCell3: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[bannerCollectionView3.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView3.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell3", for: indexPath) as! BannerCollectionViewCell3
        cell.bannerImage3.image = UIImage(named: data[bannerCollectionView3.tag].image[indexPath.row])
        return cell
    }
}
