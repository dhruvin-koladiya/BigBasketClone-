//
//  CategoryPageViewController.swift
//  PageUI
//
//  Created by R82 on 28/02/23.
//

import UIKit

class CategoryPageViewController: UIViewController {

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    
    var arrCategoryItems: [CategoryItems] = []
    var myImage: [String] = ["ima1", "ima2", "ima3", "ima4","ima5", "ima6","ima7", "ima8","ima9", "ima10", "ima11"]
    //var arrButton = ["button", "button", "button", "button", "button", "button", "button", "button", "button", "button", "button"]
    override func viewDidLoad() {
        super.viewDidLoad()
        searchBar.layer.cornerRadius = 10
        searchBar.layer.masksToBounds = true
        searchBar.backgroundColor = .systemFill
        setUp()
    }
    
    private func setUp() {
        loadCategoryItems()
        configureTableView()
    }

    
    private func configureTableView() {
        tableView.register(UINib(nibName: "CategoryItemsTableViewCell", bundle: nil), forCellReuseIdentifier: "CategoryItemsTableViewCell")
    }
 
    
    private func loadCategoryItems() {
        let one: CategoryItems = CategoryItems(myImage: UIImage(named: "ima1")!, nameLabel: "Fruits & Vegetables", button: UIImage(named: "button")!)
        let two: CategoryItems = CategoryItems(myImage: UIImage(named: "ima2")!, nameLabel: "Foodgrains, oil & Masala", button: UIImage(named: "button")!)
        let three: CategoryItems = CategoryItems(myImage: UIImage(named: "ima3")!, nameLabel: "Bakery, Cakes & Dairy", button: UIImage(named: "button")!)
        let four: CategoryItems = CategoryItems(myImage: UIImage(named: "ima4")!, nameLabel: "Beverages", button: UIImage(named: "button")!)
        let five: CategoryItems = CategoryItems(myImage: UIImage(named: "ima5")!, nameLabel: "Snacks & Branded Foods", button: UIImage(named: "button")!)
        let six: CategoryItems = CategoryItems(myImage: UIImage(named: "ima6")!, nameLabel: "Beauty & Hygiene", button: UIImage(named: "button")!)
        let seven: CategoryItems = CategoryItems(myImage: UIImage(named: "ima7")!, nameLabel: "Cleaning & Household", button: UIImage(named: "button")!)
        let eight: CategoryItems = CategoryItems(myImage: UIImage(named: "ima8")!, nameLabel: "Kitchen, Garden & Pets", button: UIImage(named: "button")!)
        let nine: CategoryItems = CategoryItems(myImage: UIImage(named: "ima9")!, nameLabel: " Eggs, Meat & Fish", button: UIImage(named: "button")!)
        let ten: CategoryItems = CategoryItems(myImage: UIImage(named: "ima10")!, nameLabel: "Gourmet & World Food", button: UIImage(named: "button")!)
        let eleven: CategoryItems = CategoryItems(myImage: UIImage(named: "ima11")!, nameLabel: "Baby Care", button: UIImage(named: "button")!)
        
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten, eleven]
    }
    
    
}

extension CategoryPageViewController: UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: UITableViewCell = UITableViewCell()
        cell.textLabel?.text = arrCategoryItems[indexPath.row].nameLabel
        cell.imageView?.image = UIImage(named: myImage[indexPath.row])
        return cell
    }
}

