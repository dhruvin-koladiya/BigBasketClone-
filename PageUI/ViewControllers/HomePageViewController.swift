//
//  HomePageViewController.swift
//  PageUI
//
//  Created by R82 on 28/02/23.
//

import UIKit

class HomePageViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var collectionView1: UICollectionView!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var collectionView2: UICollectionView!
    @IBOutlet weak var collectionView3: UICollectionView!
    @IBOutlet weak var collectionView4: UICollectionView!
    @IBOutlet weak var collectionView5: UICollectionView!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var collectionView6: UICollectionView!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var collectionView7: UICollectionView!
    @IBOutlet weak var collectionView8: UICollectionView!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var collectionView9: UICollectionView!
    @IBOutlet weak var collectionView10: UICollectionView!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var collectionView11: UICollectionView!
    @IBOutlet weak var collectionView12: UICollectionView!
    @IBOutlet weak var collectionView13: UICollectionView!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var collectionView14: UICollectionView!
    
    // MARK: - Variables
    var Index = 0
    var numberOfItemInRow: Int = 3
    var interItemSpace: CGFloat = 16
    var selectedIndex = -1
    var arrImage1 = ["images1", "images2", "images3", "images4", "images5" ]
    var arrImage2 = ["i1", "i2", "i3", "i4", "i5", "i6", "i7", "i8", "i9", "i10", "i11", "i12"]
    var arrImage3 = ["scrool1", "scrool2", "scrool3", "scrool4", "scrool5"]
    var arrImage4 = ["s1", "s2", "s3", "s4", "s5"]
    var arrImage5 = ["s6", "s7", "s8", "s9", "s10", "s11"]
    var arrImage6 = ["a1", "a2", "a3", "a4"]
    var arrImage7 = ["b1", "b2", "b3", "b4", "b5", "b6"]
    var arrImage8 = ["sc1", "sc2", "sc3", "sc4", "sc5"]
    var arrImage9 = ["d1", "d2", "d3", "d4", "d5", "d6"]
    var arrImage10 = ["im11", "im22", "im33"]
    var arrImage11 = ["e1", "e2", "e3", "e4"]
    var arrImage12 = ["f1", "f2", "f3", "f4", "f5", "f6"]
    var arrImage13 = ["g1", "g2", "g3", "g4"]
    var arrImage14 = ["q1", "q2", "q3", "q4", "q5", "q6"]
    var arrImage155 = ["im11", "im22", "im33"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label1.setCorner(radious: 10)
        label1.setBorder(width: 1, color: .systemFill)
        label2.setCorner(radious: 10)
        label2.setBorder(width: 1, color: .systemFill)
        label3.setCorner(radious: 10)
        label3.setBorder(width: 1, color: .systemFill)
        label4.setCorner(radious: 10)
        label4.setBorder(width: 1, color: .systemFill)
        label5.setCorner(radious: 10)
        label5.setBorder(width: 1, color: .systemFill)
        label6.setCorner(radious: 10)
        label6.setBorder(width: 1, color: .systemFill)
    }
}

extension HomePageViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == self.collectionView1 { return arrImage1.count }
        else if collectionView == self.collectionView2 { return arrImage2.count }
        else if collectionView == self.collectionView3 { return arrImage3.count }
        else if collectionView == self.collectionView4 { return arrImage4.count }
        else if collectionView == self.collectionView5 { return arrImage5.count }
        else if collectionView == self.collectionView6 { return arrImage6.count }
        else if collectionView == self.collectionView7 { return arrImage7.count }
        else if collectionView == self.collectionView8 { return arrImage8.count }
        else if collectionView == self.collectionView9 { return arrImage9.count }
        else if collectionView == self.collectionView10 { return arrImage10.count }
        else if collectionView == self.collectionView11 { return arrImage11.count }
        else if collectionView == self.collectionView12 { return arrImage12.count }
        else if collectionView == self.collectionView13 { return arrImage13.count }
        return arrImage14.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.collectionView1 {
            let cell1 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell1", for: indexPath) as! ImageCollectionViewCell
            cell1.cImage1?.image = UIImage(named: arrImage1[indexPath.row])
            return cell1
        } else if collectionView == self.collectionView2 {
            let cell2 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell2", for: indexPath) as! ImageCollectionViewCell
            cell2.cImage2?.image = UIImage(named: arrImage2[indexPath.row])
            cell2.cImage2.layer.borderWidth = 1
            cell2.cImage2.layer.borderColor = UIColor.separator.cgColor
            return cell2
        } else if collectionView == self.collectionView3 {
            let cell3 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell3", for: indexPath) as! ImageCollectionViewCell
            cell3.cImage3?.image = UIImage(named: arrImage3[indexPath.row])
            return cell3
        } else if collectionView == self.collectionView4 {
            let cell4 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell4", for: indexPath) as! ImageCollectionViewCell
            cell4.cImage4?.image = UIImage(named: arrImage4[indexPath.row])
            return cell4
        } else if collectionView == self.collectionView5 {
            let cell5 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell5", for: indexPath) as! ImageCollectionViewCell
            cell5.cImage5?.image = UIImage(named: arrImage5[indexPath.row])
            return cell5
        }  else if collectionView == self.collectionView6 {
            let cell6 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell6", for: indexPath) as! ImageCollectionViewCell
            cell6.cImage6?.image = UIImage(named: arrImage6[indexPath.row])
            cell6.cImage6.layer.borderWidth = 1
            cell6.cImage6.layer.borderColor = UIColor.separator.cgColor
            return cell6
        } else if collectionView == self.collectionView7 {
            let cell7 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell7", for: indexPath) as! ImageCollectionViewCell
            cell7.cImage7?.image = UIImage(named: arrImage7[indexPath.row])
            cell7.cImage7.layer.borderWidth = 1
            cell7.cImage7.layer.borderColor = UIColor.separator.cgColor
            return cell7
        } else if collectionView == self.collectionView8 {
            let cell8 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell8", for: indexPath) as! ImageCollectionViewCell
            cell8.cImage8?.image = UIImage(named: arrImage8[indexPath.row])
            return cell8
        } else if collectionView == self.collectionView9 {
            let cell9 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell9", for: indexPath) as! ImageCollectionViewCell
            cell9.cImage9?.image = UIImage(named: arrImage9[indexPath.row])
            cell9.cImage9.layer.borderWidth = 1
            cell9.cImage9.layer.borderColor = UIColor.separator.cgColor
            return cell9
        } else if collectionView == self.collectionView10 {
            let cell10 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell10", for: indexPath) as! ImageCollectionViewCell
            cell10.cImage10?.image = UIImage(named: arrImage10[indexPath.row])
            return cell10
        } else if collectionView == self.collectionView11 {
            let cell11 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell11", for: indexPath) as! ImageCollectionViewCell
            cell11.cImage11?.image = UIImage(named: arrImage11[indexPath.row])
            cell11.cImage11.layer.borderWidth = 1
            cell11.cImage11.layer.borderColor = UIColor.separator.cgColor
            return cell11
        } else if collectionView == self.collectionView12 {
            let cell12 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell12", for: indexPath) as! ImageCollectionViewCell
            cell12.cImage12?.image = UIImage(named: arrImage12[indexPath.row])
            cell12.cImage12.layer.borderWidth = 1
            cell12.cImage12.layer.borderColor = UIColor.separator.cgColor
            return cell12
        } else if collectionView == self.collectionView13 {
            let cell13 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell13", for: indexPath) as! ImageCollectionViewCell
            cell13.cImage13?.image = UIImage(named: arrImage13[indexPath.row])
            cell13.cImage13.layer.borderWidth = 1
            cell13.cImage13.layer.borderColor = UIColor.separator.cgColor
            return cell13
        }
        let cell14 = collectionView.dequeueReusableCell(withReuseIdentifier: "cell14", for: indexPath) as! ImageCollectionViewCell
        cell14.cImage14?.image = UIImage(named: arrImage14[indexPath.row])
        cell14.cImage14.layer.borderWidth = 1
        cell14.cImage14.layer.borderColor = UIColor.separator.cgColor
        return cell14
    }
    
  


