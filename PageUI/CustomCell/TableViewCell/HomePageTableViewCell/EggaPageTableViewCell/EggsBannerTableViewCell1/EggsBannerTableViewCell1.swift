//
//  EggsBannerTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsBannerTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var eggaBannerCollectionView1: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        eggaBannerCollectionView1.register(UINib(nibName: "EggsBannerCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "EggsBannerCollectionViewCell1")
        eggaBannerCollectionView1.delegate = self
        eggaBannerCollectionView1.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = eggaBannerCollectionView1 else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            let itemCount = eggsData[currentItem.section].image.count
            
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For EggsBannerTableViewCell1
extension EggsBannerTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eggsData[eggaBannerCollectionView1.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = eggaBannerCollectionView1.dequeueReusableCell(withReuseIdentifier: "EggsBannerCollectionViewCell1", for: indexPath) as! EggsBannerCollectionViewCell1
        cell.eggsImage1.image = UIImage(named: eggsData[eggaBannerCollectionView1.tag].image[indexPath.row])
        return cell
    }
}
