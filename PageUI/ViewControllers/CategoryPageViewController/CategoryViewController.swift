//
//  CategoryViewController.swift
//  PageUI
//
//  Created by ABC on 04/06/23.
//

import UIKit

struct CellData {
    var operend: Bool
    var images: UIImage
    var title: String
    var sectionTitle: [String]
}

class CategoryViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variable
    var tableViewData = [CellData]()
    var expandedSections = Set<Int>()
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.layer.cornerRadius = 10
        searchBar.layer.masksToBounds = true
        tableView.register(UINib(nibName: "SCTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
        tableViewData = [
            CellData(operend: false, images: UIImage(named: "ima1")!, title: "Fruits & Vegetables", sectionTitle: ["All Fruits & Vegetables", "Fresh Vegetables", "Herbs & Seasonings", "Fresh Fruits"]),
            CellData(operend: false, images: UIImage(named: "ima2")!, title: "Foodgrains, Oil & Masala", sectionTitle: ["All Foodgrains, Oil & Masala", "Dals & Pulses", "Atta, Flours & Sooji", "Salt, Sugar & Jaggery"]),
            CellData(operend: false, images: UIImage(named: "ima3")!, title: "Bakery, Cakes & Dairy", sectionTitle: ["All Bakery, Cakes & Dairy", "Dairy", "Breads & Buns", "Gourmet Breads"]),
            CellData(operend: false, images: UIImage(named: "ima4")!, title: "Beverages", sectionTitle: ["All Beverages", "Energy & Soft Drinks", "Tea", "Health Drink, Supplement", "Water"]),
            CellData(operend: false, images: UIImage(named: "ima5")!, title: "Snacks & Branded Foods", sectionTitle: ["All Snacks & Branded Foods", "Noodle, Pasta, Vermicelli", "Biscuits & Cookies", "Frozen Veggies & Snacks"]),
            CellData(operend: false, images: UIImage(named: "ima6")!, title: "Beauty & Hygiene", sectionTitle: ["All Beauty & Hygiene", "Oral Care", "Bath & Hand Wash", "Feminine Hygiene"]),
            CellData(operend: false, images: UIImage(named: "ima7")!, title: "Cleaning & Household", sectionTitle: ["All Cleaning & Household", "Detergents & Dishwash", "All Purpose Cleaners", "Disposables, Garbage Bag"]),
            CellData(operend: false, images: UIImage(named: "ima8")!, title: "Kitchen, Garden & Pets", sectionTitle: ["All Kitchen, Garden & Pets", "Appliances & Electricals", "Pet Food & Accessories"]),
            CellData(operend: false, images: UIImage(named: "ima9")!, title: "Eggs, Meat & Fish", sectionTitle: ["All Eggs, Meat & Fish", "Eggs", "Poultry", "Mutton & Lamb"]),
            CellData(operend: false, images: UIImage(named: "ima10")!, title: "Gourmet & World Food", sectionTitle: ["All Gourmet & World Food", "Dairy & Cheese", "Oils & Vinegar"]),
            CellData(operend: false, images: UIImage(named: "ima11")!, title: "Baby Care", sectionTitle: ["All Baby Care", "Diapers & Wipes", "Baby Bath & Hygiene", "Baby Food & Formula"])
        ]
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillAppear(animated)
        navigationController?.navigationBar.isHidden = false
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For CategoryViewController
extension CategoryViewController: UITableViewDelegate, UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return tableViewData.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if expandedSections.contains(section) {
            return tableViewData[section].sectionTitle.count + 1
        } else {
            return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") as? SCTableViewCell else { return UITableViewCell() }
            cell.textLabel?.text = tableViewData[indexPath.section].title
            cell.imageView?.image = tableViewData[indexPath.section].images
            cell.textLabel?.textColor = UIColor.systemGreen
            cell.textLabel?.font = UIFont.systemFont(ofSize: 24, weight: .medium)
            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else { return UITableViewCell() }
            cell.textLabel?.text = tableViewData[indexPath.section].sectionTitle[indexPath.row - 1]
            cell.imageView?.image = nil
            cell.textLabel?.textColor = UIColor.red
            cell.textLabel?.font = UIFont.systemFont(ofSize: 22, weight: .regular)
            return cell
        }
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
        if indexPath.row == 0 {
            let section = indexPath.section
            if expandedSections.contains(section) {
                expandedSections.remove(section)
            } else {
                expandedSections.insert(section)
            }
            tableView.reloadSections([section], with: .fade)
        } else {
            let selectedTitle = tableViewData[indexPath.section].sectionTitle[indexPath.row - 1]
            if selectedTitle == "All Fruits & Vegetables" ||
                selectedTitle == "Fresh Vegetables" ||
                selectedTitle == "Herbs & Seasonings" ||
                selectedTitle == "Fresh Fruits" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FruitsPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle == "Foodgrains, Oil & Masala" ||
                selectedTitle == "All Foodgrains, Oil & Masala" ||
                selectedTitle == "Dals & Pulses" ||
                selectedTitle == "Atta, Flours & Sooji" ||
                selectedTitle == "Salt, Sugar & Jaggery" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle == "Bakery, Cakes & Dairy" ||
                selectedTitle == "All Bakery, Cakes & Dairy" ||
                selectedTitle == "Dairy" ||
                selectedTitle == "Breads & Buns" ||
                selectedTitle == "Gourmet Breads" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "BakeryPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle == "Beverages" ||
                selectedTitle == "All Beverages" ||
                selectedTitle == "Energy & Soft Drinks" ||
                selectedTitle == "Tea" ||
                selectedTitle ==  "Health Drink, Supplement" ||
                selectedTitle == "Water"{
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "BeveragesPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle == "Snacks & Branded Foods" ||
                selectedTitle == "All Snacks & Branded Foods" ||
                selectedTitle == "Noodle, Pasta, Vermicelli" ||
                selectedTitle == "Biscuits & Cookies" ||
                selectedTitle ==  "Frozen Veggies & Snacks"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "SnacksPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle == "Beauty & Hygiene" ||
                selectedTitle == "All Beauty & Hygiene" ||
                selectedTitle ==  "Oral Care" ||
                selectedTitle == "Bath & Hand Wash" ||
                selectedTitle ==  "Feminine Hygiene"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "BeautyViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle == "Cleaning & Household" ||
                selectedTitle == "All Cleaning & Household" ||
                selectedTitle == "Detergents & Dishwash" ||
                selectedTitle == "All Purpose Cleaners" ||
                selectedTitle ==  "Disposables, Garbage Bag"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "CleaningViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            
            if selectedTitle == "Kitchen, Garden & Pets" ||
                selectedTitle == "All Kitchen, Garden & Pets" ||
                selectedTitle == "Appliances & Electricals" ||
                selectedTitle == "Pet Food & Accessories"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "KitchenPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle ==  "Eggs, Meat & Fish" ||
                selectedTitle == "All Eggs, Meat & Fish" ||
                selectedTitle == "Eggs" ||
                selectedTitle == "Poultry" ||
                selectedTitle == "Mutton & Lamb"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "EggaMeatViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            if selectedTitle ==  "Gourmet & World Food" ||
                selectedTitle == "All Gourmet & World Food" ||
                selectedTitle == "Dairy & Cheese" ||
                selectedTitle == "Oils & Vinegar"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "GourmetPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }

            if selectedTitle ==  "Baby Care" ||
                selectedTitle == "All Baby Care" ||
                selectedTitle == "Diapers & Wipes" ||
                selectedTitle == "Baby Bath & Hygiene" ||
                selectedTitle ==  "Baby Food & Formula"
            {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "BabyCarePageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
        }
    }
}






