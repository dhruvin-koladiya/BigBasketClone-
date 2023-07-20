//
//  FoodgrainsShopByTableViewCell.swift
//  PageUI
//
//  Created by ABC on 16/04/23.
//

import UIKit

class FoodgrainsShopByTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var foodShopLabel: UILabel!
    @IBOutlet weak var foodgrainsCollectionView: UICollectionView!
    private var timer: Timer?
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        startAutomaticScrolling()
        foodShopLabel.setCorner(radious: 8)
        foodShopLabel.setBorder(width: 1, color: .systemFill)
        foodgrainsCollectionView.register(UINib(nibName: "FoodgrainsShopByCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "FoodgrainsShopByCollectionViewCell")
        foodgrainsCollectionView.delegate = self
        foodgrainsCollectionView.dataSource = self
    }
    
    private func startAutomaticScrolling() {
        timer = Timer.scheduledTimer(timeInterval: 0.5, target: self, selector: #selector(scrollToNextItem), userInfo: nil, repeats: true)
    }
    
    @objc private func scrollToNextItem() {
        guard let collectionView = foodgrainsCollectionView else { return }
        
        let visibleItems = collectionView.indexPathsForVisibleItems
        if let currentItem = visibleItems.first {
            var nextItem = currentItem.item + 1
            if nextItem >= data[foodgrainsCollectionView.tag].image.count {
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

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For FoodgrainsShopByTableViewCell
extension FoodgrainsShopByTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return foodgrainsPageData[foodgrainsCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = foodgrainsCollectionView.dequeueReusableCell(withReuseIdentifier: "FoodgrainsShopByCollectionViewCell", for: indexPath) as! FoodgrainsShopByCollectionViewCell
        cell.foodgrainsShopImage.image = UIImage(named: foodgrainsPageData[foodgrainsCollectionView.tag].image[indexPath.row])
        return cell
    }
}



