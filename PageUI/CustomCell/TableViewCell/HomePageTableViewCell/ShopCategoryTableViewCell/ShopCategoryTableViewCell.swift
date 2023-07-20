//
//  ShopCategoryTableViewCell.swift
//  PageUI
//
//  Created by ABC on 09/04/23.
//

import UIKit

class ShopCategoryTableViewCell: UITableViewCell {
    
    // MARK: - IBOutlet
    @IBOutlet weak var shopCategoryLabel: UILabel!
    @IBOutlet weak var shopCategoryCollectionView: UICollectionView!
    
    // MARK: - Life Cycle Method
    override func awakeFromNib() {
        super.awakeFromNib()
        shopCategoryLabel.setCorner(radious: 8)
        shopCategoryLabel.setBorder(width: 1, color: .systemFill)
        shopCategoryCollectionView.register(UINib(nibName: "ShopCategoryCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "ShopCategoryCollectionViewCell")
        shopCategoryCollectionView.delegate = self
        shopCategoryCollectionView.dataSource = self
    }
}

// MARK: - UICollectionViewDelegate And UICollectionViewDelegate Method For ShopCategoryTableViewCell
extension ShopCategoryTableViewCell: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return data[shopCategoryCollectionView.tag].image.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = shopCategoryCollectionView.dequeueReusableCell(withReuseIdentifier: "ShopCategoryCollectionViewCell", for: indexPath) as! ShopCategoryCollectionViewCell
        cell.shopCategoryImage.image = UIImage(named: data[shopCategoryCollectionView.tag].image[indexPath.row])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let navigationController = self.window?.rootViewController  as! UINavigationController
        switch indexPath.row  {
        case 0:
            let fruitsPageViewController: FruitsPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "FruitsPageViewController") as! FruitsPageViewController
            navigationController.pushViewController(fruitsPageViewController, animated: true)
        case 1:
            let foodgrainsViewController: FoodgrainsViewController = Config.storyBoard.instantiateViewController(withIdentifier: "FoodgrainsViewController") as! FoodgrainsViewController
            navigationController.pushViewController(foodgrainsViewController, animated: true)
        case 2:
            let eggaMeatViewController: EggaMeatViewController = Config.storyBoard.instantiateViewController(withIdentifier: "EggaMeatViewController") as! EggaMeatViewController
            navigationController.pushViewController(eggaMeatViewController, animated: true)
        case 3:
            let kitchenPageViewController: KitchenPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "KitchenPageViewController") as! KitchenPageViewController
            navigationController.pushViewController(kitchenPageViewController, animated: true)
        case 4:
            let cleaningViewController: CleaningViewController = Config.storyBoard.instantiateViewController(withIdentifier: "CleaningViewController") as! CleaningViewController
            navigationController.pushViewController(cleaningViewController, animated: true)
        case 5:
            let beautyViewController: BeautyViewController = Config.storyBoard.instantiateViewController(withIdentifier: "BeautyViewController") as! BeautyViewController
            navigationController.pushViewController(beautyViewController, animated: true)
        case 6:
            let snacksPageViewController: SnacksPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "SnacksPageViewController") as! SnacksPageViewController
            navigationController.pushViewController(snacksPageViewController, animated: true)
        case 7:
            let bakeryPageViewController: BakeryPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "BakeryPageViewController") as! BakeryPageViewController
            navigationController.pushViewController(bakeryPageViewController, animated: true)
        case 8:
            let beveragesPageViewController: BeveragesPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "BeveragesPageViewController") as! BeveragesPageViewController
            navigationController.pushViewController(beveragesPageViewController, animated: true)
        case 9:
            let gourmetPageViewController: GourmetPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "GourmetPageViewController") as! GourmetPageViewController
            navigationController.pushViewController(gourmetPageViewController, animated: true)
        case 10:
            let babyCarePageViewController: BabyCarePageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "BabyCarePageViewController") as! BabyCarePageViewController
            navigationController.pushViewController(babyCarePageViewController, animated: true)
        case 11:
            let harDinSastaPageViewController: HarDinSastaPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "HarDinSastaPageViewController") as! HarDinSastaPageViewController
            navigationController.pushViewController(harDinSastaPageViewController, animated: true)
        default:
            let fruitsPageViewController: FruitsPageViewController = Config.storyBoard.instantiateViewController(withIdentifier: "FruitsPageViewController") as! FruitsPageViewController
            navigationController.pushViewController(fruitsPageViewController, animated: true)
        }
    }
}

