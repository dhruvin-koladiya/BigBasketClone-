//
//  BannerTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 08/04/23.
//

import UIKit

class BannerTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var bannerCollectionView1: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        bannerCollectionView1.register(UINib(nibName: "BannerCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "BannerCollectionViewCell1")
        bannerCollectionView1.delegate = self
        bannerCollectionView1.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = bannerCollectionView1 else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            var nextItem = currentItem.item + 1
            if nextItem >= data[bannerCollectionView1.tag].image.count {
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For BannerTableViewCell1
extension BannerTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[bannerCollectionView1.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = bannerCollectionView1.dequeueReusableCell(withReuseIdentifier: "BannerCollectionViewCell1", for: indexPath) as! BannerCollectionViewCell1
        cell.sImage1.image = UIImage(named: data[bannerCollectionView1.tag].image[indexPath.row])
        return cell
    }
}



