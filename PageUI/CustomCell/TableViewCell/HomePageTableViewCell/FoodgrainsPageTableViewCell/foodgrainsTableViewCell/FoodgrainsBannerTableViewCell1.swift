//
//  FoodgrainsBannerTableViewCell1.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsBannerTableViewCell1: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var foodgrainsBannerCollectionView1: UICollectionView!
    
    // MARK: - Variable
    private var timer: Timer?
   
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        foodgrainsBannerCollectionView1.register(UINib(nibName: "FoodgrainsBannerCollectionViewCell1", bundle: nil), forCellWithReuseIdentifier: "FoodgrainsBannerCollectionViewCell1")
        foodgrainsBannerCollectionView1.delegate = self
        foodgrainsBannerCollectionView1.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = foodgrainsBannerCollectionView1 else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            let itemCount = foodgrainsPageData[currentItem.section].image.count
            
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FoodgrainsBannerTableViewCell1
extension FoodgrainsBannerTableViewCell1: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodgrainsPageData[foodgrainsBannerCollectionView1.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = foodgrainsBannerCollectionView1.dequeueReusableCell(withReuseIdentifier: "FoodgrainsBannerCollectionViewCell1", for: indexPath) as! FoodgrainsBannerCollectionViewCell1
        cell.foodgrainsBannerImage1.image = UIImage(named: foodgrainsPageData[foodgrainsBannerCollectionView1.tag].image[indexPath.row])
        return cell
    }
}
