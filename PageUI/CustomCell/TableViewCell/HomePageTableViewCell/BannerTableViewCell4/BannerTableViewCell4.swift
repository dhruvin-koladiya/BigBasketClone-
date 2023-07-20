//
//  BannerTableViewCell4.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class BannerTableViewCell4: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var bannerCollectionView4: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        bannerCollectionView4.register(UINib(nibName: "BannerCollectionViewCell4", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell4")
        bannerCollectionView4.delegate = self
        bannerCollectionView4.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = bannerCollectionView4 else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            var nextItem = currentItem.item + 1
            if nextItem >= data[bannerCollectionView4.tag].image.count {
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BannerTableViewCell4
extension BannerTableViewCell4: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[bannerCollectionView4.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView4.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell4", for: indexPath) as! BannerCollectionViewCell4
        cell.bannerImage4.image = UIImage(named: data[bannerCollectionView4.tag].image[indexPath.row])
        return cell
    }
}
