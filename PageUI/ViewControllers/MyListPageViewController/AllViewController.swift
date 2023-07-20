//
//  AllViewController.swift
//  PageUI
//
//  Created by ABC on 18/03/23.
//

import UIKit

class AllViewController: UIViewController, UITextFieldDelegate {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var popup: PricePopup!
    var cell: AllTableViewCell!
    
    // MARK: - Life Cycle Method
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    // MARK: - Initialization
    private func setup() {
        configureTableView()
        loadCategory()
    }
    
    // MARK: - Get AllViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "AllTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "one")!, name1: "Capsicum -", name2: "Green (Loose)", popupButton: "Har Din Sasta!", addButton: "Add",  p1: "₹39", p2: "₹51.32", nameLabel: "FRESHO")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "two")!, name1: "Carrot - Orange", name2: "(Loose)", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹9.25", p2: "₹12.17", nameLabel: "FRESHO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "three")!, name1: "Cauliflower", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹20.50", p2: "₹33.55", nameLabel: "FRESHO")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "four")!, name1: "Coriander", name2: "Leaves", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹7.50", p2: "₹12.11", nameLabel: "FRESHO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "five")!, name1: "Ladies' Fingers", name2: "(Loose)", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹31", p2: "₹53.95", nameLabel: "FRESHO")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "six")!, name1: "Onion", name2: "(Loose", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹21.5", p2: "₹32.51", nameLabel: "FRESHO")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "seven")!, name1: "Tomato - Hybrid", name2: "(Loose", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹27", p2: "₹35.53", nameLabel: "FRESHO")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "eight")!, name1: "Tomato - Local", name2: "(Loose", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹26", p2: "₹34.21", nameLabel: "FRESHO")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "nine")!, name1: "Beans - Haricot", name2: "(Loose", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹47", p2: "₹61.84", nameLabel: "FRESHO")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For AllViewController
extension AllViewController: UITableViewDelegate, UITableViewDataSource{
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! AllTableViewCell
        cell.images?.image = UIImage(named: arrImage[indexPath.row])
        cell.freshoLabel?.text = arrCategoryItems[indexPath.row].nameLabel
        cell.p1?.text = arrCategoryItems[indexPath.row].p1
        cell.p2?.text = arrCategoryItems[indexPath.row].p2
        cell.nameLabel1?.text = arrCategoryItems[indexPath.row].name1
        cell.nameLabel2?.text = arrCategoryItems[indexPath.row].name2
        cell.popupButton.tag = indexPath.section
        cell.popupButton.addTarget(self, action: #selector(popupButtonClicked(_:)), for: .touchUpInside)
        cell.priceButton.tag = indexPath.row
        cell.priceButton.addTarget(self, action: #selector(priceButtonTapped(_:)), for: .touchUpInside)
        cell.selectionStyle = .none
        return cell
    }
    
    @objc
    func popupButtonClicked(_ sender: UIButton) {
        self.commonPopup = OfferPopupView(frame: self.view.frame)
        self.commonPopup.closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        self.view.addSubview(commonPopup)
        tabBarController?.tabBar.isHidden = true
    }
    
    @objc func closeButtonTapped() {
        self.commonPopup.removeFromSuperview()
        tabBarController?.tabBar.isHidden = false
    }
    
    @objc
    func priceButtonTapped(_ sender: UIButton) {
        let indexPath = IndexPath(row: sender.tag, section: 0)
        cell = tableView.cellForRow(at: indexPath) as? AllTableViewCell
        self.popup = PricePopup(frame: self.view.frame)
        self.popup.kgButton.addTarget(self, action: #selector(kgButtonTapped), for: .touchUpInside)
        self.popup.fiveGm.addTarget(self, action: #selector(fiveFiftyGmButtonTapped), for: .touchUpInside)
        self.popup.twoFiftyGmButton.addTarget(self, action: #selector(twoFiftyGmButtonTapped), for: .touchUpInside)
        self.view.addSubview(popup)
    }
    
    @objc func kgButtonTapped() {
        cell?.priceButton.setTitle("1 Kg", for: .normal)
        self.popup.removeFromSuperview()
    }
    
    @objc func twoFiftyGmButtonTapped() {
        cell?.priceButton.setTitle("250 Gm", for: .normal)
        self.popup.removeFromSuperview()
    }
    
    @objc func fiveFiftyGmButtonTapped() {
        cell?.priceButton.setTitle("500 Gm", for: .normal)
        self.popup.removeFromSuperview()
    }
}

