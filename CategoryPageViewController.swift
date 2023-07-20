//
//  CategoryPageViewController.swift
//  PageUI
//
//  Created by ABC on 11/03/23.
//

import UIKit

class CategoryPageViewController: UIViewController {

    
    @IBOutlet weak var searchBar: UISearchBar!
    
    @IBOutlet weak var categoryTableView: UITableView!
    //, "Eggs, Meet & Fish", "Gourmet & World Food", "Baby Care"
    // "Foodgrains, oil & Masala", "Bakery, Cakes & Dairy", "Beverages", "Snacks & Branded Foods", "Beauty & Hygiene", "Cleaning & Household", "Kitchen, Garden & Pets"
    var selectedIndex = -1
    var isCall = false
    var arrButton = ["Fruits & Vegetables", "Foodgrains, Oil & Masala", "Foodgrains, oil & Masala", "Bakery, Cakes & Dairy", "Beverages", "Snacks & Branded Foods", "Beauty & Hygiene", "Cleaning & Household" ]
    var arrLabel1 = ["All Fruits & Vegetables", "Fresh Vegetables", "Herbs & Seasonings", "Fresh Fruits", "Organic Fruits & Vegetables", "Cuts & Sprouts", "Exotic Fruits & Veggies", "Flower Bouquets, Bunches"]

    
    
    
//
//    var sections = [
//
//        Category (image: UIImage(named: "ima1")!, titleName: "dfdfff", name: ["fdffg", "fdfffgdfg"],
//                  Category (image: UIImage(named: "ima2")!, titleName: "gfgfgdfg", name: ["fdfdf", "fdfgfd"])]
//
                  
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        searchBar.layer.cornerRadius = 10
        searchBar.layer.masksToBounds = true

    }
    
    
    private func setup() {
        configureTableViewCell()
        
        categoryTableView.estimatedRowHeight = 325
        categoryTableView.rowHeight = UITableView.automaticDimension
       
    } 
    
    private func configureTableViewCell() {
        
        let nibFile: UINib = UINib(nibName: "CategoryTableViewCell", bundle: nil)
        categoryTableView.register(nibFile, forCellReuseIdentifier: "Cell")
        categoryTableView.delegate = self
        categoryTableView.dataSource = self
    }
}


extension CategoryPageViewController: UITableViewDelegate, UITableViewDataSource {
    
//    func numberOfSections(in tableView: UITableView) -> Int {
//        return sections.count
//    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return arrButton.count
    }
  
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       
        let cell: CategoryTableViewCell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! CategoryTableViewCell
        cell.labelName?.text = arrLabel1[indexPath.row]
//        cell.label2?.text = arrButton[indexPath.row]
//        
     
     
        return cell
    }
      
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if selectedIndex == indexPath.row
        {
            if self.isCall == false
            {
                self.isCall = true
            } else
            {
                self.isCall = false
            }
        } else
        {
            self.isCall = true
        }
        self.selectedIndex = indexPath.row
       
        tableView.reloadRows(at: [indexPath], with: .automatic)
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        if self.selectedIndex == indexPath.row && isCall == true {
            return 325
        } else {
            return 50
        }
    }
}
