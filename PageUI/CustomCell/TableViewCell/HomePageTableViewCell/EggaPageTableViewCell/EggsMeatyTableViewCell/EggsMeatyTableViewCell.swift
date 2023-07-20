//
//  EggsMeatyTableViewCell.swift
//  PageUI
//
//  Created by ABC on 17/04/23.
//

import UIKit

class EggsMeatyTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var eggsLabel2: UILabel!
    @IBOutlet weak var eggsMeatyCollectionViewCell: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        eggsLabel2.setCorner(radious: 8)
        eggsLabel2.setBorder(width: 1, color: .systemFill)
        eggsMeatyCollectionViewCell.register(UINib(nibName: "EggsMeatyCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "EggsMeatyCollectionViewCell")
        eggsMeatyCollectionViewCell.delegate = self
        eggsMeatyCollectionViewCell.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For EggsMeatyTableViewCell
extension EggsMeatyTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return eggsData[eggsMeatyCollectionViewCell.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = eggsMeatyCollectionViewCell.dequeueReusableCell(withReuseIdentifier: "EggsMeatyCollectionViewCell", for: indexPath) as! EggsMeatyCollectionViewCell
        cell.meatyImage.image = UIImage(named: eggsData[eggsMeatyCollectionViewCell.tag].image[indexPath.row])
        return cell
    }
}
