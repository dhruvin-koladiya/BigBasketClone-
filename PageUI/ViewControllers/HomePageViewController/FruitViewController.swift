//
//  FruitViewController.swift
//  PageUI
//
//  Created by ABC on 07/03/23.
//

import UIKit

class FruitViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var scroolImageCollectionView1: UICollectionView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var scroolImageCollectionView2: UICollectionView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var collectionView2: UICollectionView!
    
    // MARK: - Variables
    var arrImage1 = ["im1", "im2", "im3", "im4", "im5", "im6", "im7", "im8", "s4"]
    var arrImage2 = ["c1", "c2", "c3", "c4", "c5", "c6", "c7", "c8"]
    var arrImage3 = ["111", "333"]
    var arrImage4 = ["aa", "ab", "ac", "ad", "ae","af"]
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.setCorner(radious: 10)
        label1.setBorder(width: 1, color: .systemFill)
        label2.setCorner(radious: 10)
        label2.setBorder(width: 1, color: .systemFill)
    }
}

// MARK: - Get FruitViewController Page Details
extension FruitViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int  {
        if collectionView == self.scroolImageCollectionView1 {  return arrImage1.count  }
        else if collectionView == self.collectionView1 {  return arrImage2.count  }
        else if collectionView == self.scroolImageCollectionView2 {  return arrImage3.count  }
        return arrImage4.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.scroolImageCollectionView1 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "scrool1", for: indexPath) as! FruitImageCollectionViewCell
            cell1.sImage1.image = UIImage(named: arrImage1[indexPath.row])
            return cell1
        } else if collectionView == self.collectionView1 {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! FruitImageCollectionViewCell
            cell2.cImage1.image = UIImage(named: arrImage2[indexPath.row])
            cell2.cImage1.layer.borderWidth = 1
            cell2.cImage1.layer.borderColor = UIColor.systemFill.cgColor
            return cell2
        } else if collectionView == self.scroolImageCollectionView2 {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "scrool2", for: indexPath) as! FruitImageCollectionViewCell
            cell3.sImage2.image = UIImage(named: arrImage3[indexPath.row])
            cell3.sImage2.layer.borderWidth = 1
            cell3.sImage2.layer.borderColor = UIColor.systemFill.cgColor
            return cell3
        }
        let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! FruitImageCollectionViewCell
        cell4.cImage2.image = UIImage(named: arrImage4[indexPath.row])
        cell4.cImage2.layer.borderWidth = 1
        cell4.cImage2.layer.borderColor =  UIColor.systemFill.cgColor
        return cell4
    }
}

extension FruitViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == self.collectionView1 {  return CGSize(width: 197, height: 205)  }
        return CGSize(width: 131, height: 135)
    }
}
