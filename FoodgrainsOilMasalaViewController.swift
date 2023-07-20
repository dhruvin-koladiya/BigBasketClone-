//
//  FoodgrainsOilMasalaViewController.swift
//  PageUI
//
//  Created by ABC on 14/03/23.
//

import UIKit

class FoodgrainsOilMasalaViewController: UIViewController {
    @IBOutlet weak var categoryTableView: UITableView!
    @IBOutlet weak var buttonCollectionView: UICollectionView!
    var arrTitle: [String] = ["ALL", "Fruits & Vegetables", "Foodgrains, oil & Masala", "snacks & Branded Foods", "Beauty & Hygiene", "Cleaning & Household", "Bakery, Cakes & Dairy", "Beverages", "Kitchen, Garden & Pety", "Gourmet & World Food", "Eggs, Meat & Fish", "Baby care"]
    
    
    var arrImage: [String] = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven"]

    var arrImageName: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"]

    var arrImagePrice: [String] = ["100", "200", "300", "400", "500", "600", "700", "800", "900", "1000", "1100"]

    var arrCategory: [CategoryFoodCell] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }

    private func setup() {
        loadListItem()
        configureTableViewCell()
    }

    func configureTableViewCell() {
        let nibFile: UINib = UINib(nibName: "FoodgrainsOilMasalaTableViewCell", bundle: nil)
        categoryTableView.register(nibFile, forCellReuseIdentifier: "Cell")
       // categoryTableView.separatorStyle = .none
    }
        
    }
    
private func loadListItem() {
    let one: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "one")!, imageName: UIImage(named: "1")!, price: UIImage(named: "100")!, label1: "Har Din Sasta!", label2: "Add")
    let two: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "two")!, imageName: UIImage(named: "2")!, price: UIImage(named: "200")!, label1: "Har Din Sasta!", label2: "Add")
    let three: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "three")!, imageName: UIImage(named: "3")!, price: UIImage(named: "300")!, label1: "Har Din Sasta!", label2: "Add")
    let four: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "four")!, imageName: UIImage(named: "4")!, price: UIImage(named: "400")!, label1: "Har Din Sasta!", label2: "Add")
    let five: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "five")!, imageName: UIImage(named: "5")!, price: UIImage(named: "500")!, label1: "Har Din Sasta!", label2: "Add")
    let six: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "six")!, imageName: UIImage(named: "6")!, price: UIImage(named: "600")!, label1: "Har Din Sasta!", label2: "Add")
    let seven: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "seven")!, imageName: UIImage(named: "7")!, price: UIImage(named: "700")!, label1: "Har Din Sasta!", label2: "Add")
    let eight: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "eight")!, imageName: UIImage(named: "8")!, price: UIImage(named: "800")!, label1: "Har Din Sasta!", label2: "Add")
    let nine: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "nine")!, imageName: UIImage(named: "9")!, price: UIImage(named: "900")!, label1: "Har Din Sasta!", label2: "Add")
    let ten: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "ten")!, imageName: UIImage(named: "10")!, price: UIImage(named: "1000")!, label1: "Har Din Sasta!", label2: "Add")
    let eleven: CategoryFoodCell = CategoryFoodCell(image: UIImage(named: "eleven")!, imageName: UIImage(named: "11")!, price: UIImage(named: "1100")!, label1: "Har Din Sasta!", label2: "Add")
    
    arrCategory = [one, two, three, four, five, six, seven, eight, nine, ten, eleven]



}




extension FoodgrainsOilMasalaViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return arrTitle.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! ButtonCollectionViewCell
        
        cell.titleLabel1.text = arrTitle[indexPath.row]
        cell.titleLabel1.layer.cornerRadius = 10
        cell.titleLabel1.layer.masksToBounds = true
        cell.titleLabel1.layer.borderWidth = 1
        cell.titleLabel1.layer.borderColor = UIColor.white.cgColor
        return cell
        
    }
    
  
}


extension FoodgrainsOilMasalaViewController: UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return  CGSize(width: 122, height: 60)
    }
}



extension FoodgrainsOilMasalaViewController: UITableViewDelegate, UITableViewDataSource {

func numberOfSections(in tableView: UITableView) -> Int {
    return 1
}

func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    return arrCategory.count
}

func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell: FoodgrainsOilMasalaTableViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! FoodgrainsOilMasalaTableViewCell
    cell.images?.image = UIImage(named: arrImage[indexPath.row])
    cell.imageName?.image = UIImage(named: arrImageName[indexPath.row])
    cell.price?.image = UIImage(named: arrImagePrice[indexPath.row])
    cell.popupLabel?.text = arrCategory[indexPath.row].label1
    cell.addLabel?.text = arrCategory[indexPath.row].label2
    
    return cell
}



}
