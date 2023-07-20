//
//  CategoryTableViewController.swift
//  PageUI
//
//  Created by ABC on 21/03/23.
//

import UIKit

class CategoryTableViewController: UITableViewController {
    
    // MARK: - Variables
    var tableViewData = [CategoryData]()
    var ViewC1: FruitsPageViewController!
    var ViewC2: FoodgrainsViewController!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewData = [CategoryData(operend: false, image: UIImage(named: "ima1")!, title: "Fruits & Vegetables" , sectionTitle: ["All Fruits & Vegetables", "Fresh Vegetables", "Herbs & Seasonings", "Fresh Fruits"]),
                         CategoryData(operend: false, image: UIImage(named: "ima2")!,title: "Foodgrains, Oil & Masala" , sectionTitle: ["All Foodgrains, Oil & Masala", "Atta, Flours & Sooji", "Rice & Rice Products", "Dals & Pulses", "Organic Staples", "Edible Oils & Ghee"]),
                         CategoryData(operend: false,image: UIImage(named: "ima3")!, title: "Bakery, Cakes & Dairy" , sectionTitle: ["All Bakery, Cakes & Dairy", "Dairy", "Breads & Buns", "Non Dairy"]),
                         CategoryData(operend: false,image: UIImage(named: "ima4")!, title: "Beverages", sectionTitle: ["All Beverages", "Energy & Soft Drinks", "Water", "Health Drinks, Supplement"]),
                         CategoryData(operend: false, image: UIImage(named: "ima5")!,title: "Snacks & Branded Foods", sectionTitle: ["All Snacks & Branded Foods", "Noodle, Pasta, Vermicelli", "Breakfast Cereals"]),
                         CategoryData(operend: false, image: UIImage(named: "ima6")!,title: "Beauty & Hygiene", sectionTitle: ["All Beauty & Hygiene", "Oral Care", "Feminine Hygiene"]),
                         CategoryData(operend: false, image: UIImage(named: "ima7")!,title: "Cleaning & Household", sectionTitle: ["All Cleaning & Household", "Detergents & Dishwash", "All Purpose Cleaners"]),
                         CategoryData(operend: false, image: UIImage(named: "ima8")!,title: "Kitchen, Garden & Pets", sectionTitle: ["All Kitchen, Garden & Pets", "Pet Food & Accessories", "Appliances & Electricals"]),
                         CategoryData(operend: false, image: UIImage(named: "ima9")!,title: "Eggs, Meat & Fish", sectionTitle: ["All Eggs, Meat & Fish", "Eggs",
                             "Poultry", "Sausages, Bacon & Salami"]),
                         CategoryData(operend: false,image: UIImage(named: "ima10")!, title: "Gourmet & World Food", sectionTitle: ["All Gourmet & World Food", "Oils & Vinegar", "Dairy & Cheese"]),
                         CategoryData(operend: false, image: UIImage(named: "ima11")!,title: "Baby Care", sectionTitle: ["All Baby Care", "Diapers & Wipes", "Feeding & Nursing"])]
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {  return tableViewData.count  }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if tableViewData[section].operend == true {  return tableViewData[section].sectionTitle.count + 1  }
        else  {  return 1  }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.row == 0 {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {return UITableViewCell ()}
            cell.textLabel?.text = tableViewData[indexPath.section].title
            cell.imageView?.image = tableViewData[indexPath.section].image
            
            cell.textLabel?.textColor = UIColor.systemGreen
            cell.textLabel!.font = UIFont.systemFont(ofSize: 22, weight: .medium)

            return cell
        } else {
            guard let cell = tableView.dequeueReusableCell(withIdentifier: "Cell") else {return UITableViewCell ()}
            cell.textLabel?.text = tableViewData[indexPath.section].sectionTitle[indexPath.row - 1]
            cell.imageView?.image = nil
            cell.textLabel?.textColor = UIColor.red
            cell.textLabel!.font = UIFont.systemFont(ofSize: 20, weight: .regular)
            return cell
        }
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            if tableViewData[indexPath.section].operend == true {
                tableViewData[indexPath.section].operend = false
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
                
            } else {
                tableViewData[indexPath.section].operend = true
                let sections = IndexSet.init(integer: indexPath.section)
                tableView.reloadSections(sections, with: .none)
            }
            
        } else {
            let selectedTitle = tableViewData[indexPath.section].sectionTitle[indexPath.row - 1]
            
            if selectedTitle == "All Fruits & Vegetables" {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FruitsPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            } else if selectedTitle == "Fresh Vegetables" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FruitsPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            } else if selectedTitle == "Herbs & Seasonings" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FruitsPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            else if selectedTitle == "Fresh Fruits" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FruitsPageViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            
            
            
            
            if selectedTitle == "All Foodgrains, Oil & Masala" {
                
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            } else if selectedTitle == "Atta, Flours & Sooji" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            } else if selectedTitle == "Rice & Rice Products" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            else if selectedTitle == "Dals & Pulses" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            } else if selectedTitle == "Organic Staples" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
            else if selectedTitle == "Edible Oils & Ghee" {
                let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let viewController = storyboard.instantiateViewController(withIdentifier: "FoodgrainsViewController")
                navigationController?.pushViewController(viewController, animated: true)
            }
           
            
            
        }
    }
}

