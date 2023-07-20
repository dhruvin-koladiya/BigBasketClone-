//
//  BannerTableViewCell2.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerTableViewCell2: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bannerCollectionView2: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        bannerCollectionView2.register(UINib(nibName: "BannerCollectionViewCell2", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell2")
        bannerCollectionView2.delegate = self
        bannerCollectionView2.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = bannerCollectionView2 else { return }
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            var nextItem = currentItem.item + 1
            if nextItem >= data[bannerCollectionView2.tag].image.count {
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BannerTableViewCell2
extension BannerTableViewCell2: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[bannerCollectionView2.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView2.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell2", for: indexPath) as! BannerCollectionViewCell2
        cell.bannerImage2.image = UIImage(named: data[bannerCollectionView2.tag].image[indexPath.row])
        return cell
    }
}
