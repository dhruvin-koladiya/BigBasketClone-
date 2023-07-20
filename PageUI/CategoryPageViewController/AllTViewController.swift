//
//  AllTViewController.swift
//  PageUI
//
//  Created by ABC on 22/03/23.
//

import UIKit

class AllTViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrImage: [String] = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven"]
    
    var arrCategoryItems: [CategoryCell] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
        
    }
    

    private func setup() {

        configureTableView()
        loadCategory()
    }
  
    
    private func configureTableView() {
        
        tableView.register(UINib(nibName: "AllViewTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        
        let one: CategoryCell = CategoryCell(image: UIImage(named: "one")!, name1: "Capsicum -", name2: "Green (Loose)", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹39", p2: "₹51.32", nameLabel: "FRESHO")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "two")!, name1: "Carrot - Orange", name2: "(Loose)", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹9.25", p2: "₹12.17", nameLabel: "FRESHO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "three")!, name1: "Cauliflower", name2: "", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹20.50", p2: "₹33.55", nameLabel: "FRESHO")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "four")!, name1: "Coriander", name2: "Leaves", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹7.50", p2: "₹12.11", nameLabel: "FRESHO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "five")!, name1: "Ladies' Fingers", name2: "(Loose)", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹31", p2: "₹53.95", nameLabel: "FRESHO")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "six")!, name1: "Onion", name2: "(Loose", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹21.5", p2: "₹32.51", nameLabel: "FRESHO")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "seven")!, name1: "Tomato - Hybrid", name2: "(Loose", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹27", p2: "₹35.53", nameLabel: "FRESHO")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "eight")!, name1: "Tomato - Local", name2: "(Loose", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹26", p2: "₹34.21", nameLabel: "FRESHO")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "nine")!, name1: "Beans - Haricot", name2: "(Loose", popupLabel: "Har Din Sasta!", addLabel: "Add", p1: "₹47", p2: "₹61.84", nameLabel: "FRESHO")
        
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine]
    }
}

extension AllTViewController: UITableViewDelegate, UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AllViewTableViewCell
        cell.images?.image = UIImage(named: arrImage[indexPath.row])
        cell.addLabel?.text = arrCategoryItems[indexPath.row].addLabel
        cell.popupLabel?.text = arrCategoryItems[indexPath.row].popupLabel
        cell.freshoLabel?.text = arrCategoryItems[indexPath.row].nameLabel
        cell.p1?.text = arrCategoryItems[indexPath.row].p1
        cell.p2?.text = arrCategoryItems[indexPath.row].p2
        cell.nameLabel1?.text = arrCategoryItems[indexPath.row].name1
        cell.nameLabel2?.text = arrCategoryItems[indexPath.row].name2
        return cell
    }
    
}
