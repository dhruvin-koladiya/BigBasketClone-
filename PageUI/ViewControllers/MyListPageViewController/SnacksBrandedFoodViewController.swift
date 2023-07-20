//
//  SnacksBrandedFoodViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class SnacksBrandedFoodViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["w1", "w2", "w3", "w4", "w5", "w6", "w7", "w8", "w9"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var popup: PricePopup!
    var cell: SnacksBrandedFoodTableViewCell!
    
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
    
    // MARK: - Get SnacksBrandedFoodViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "SnacksBrandedFoodTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "w1")!, name1: "Namkeen - All", name2: "in One", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹100", p2: "", nameLabel: "FRESHO")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "w2")!, name1: "2-Min Masala", name2: "instant Noodles", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹112", p2: "", nameLabel: "FRESHO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "w3")!, name1: "Idly & Dosa", name2: "Batter", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹81", p2: "", nameLabel: "FRESHO")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "w4")!, name1: "Soya Sticks", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹45", p2: "", nameLabel: "FRESHO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "w5")!, name1: "Bournville Rich Cocoa ", name2: "70% Dark Choclate Bar", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹90", p2: "₹100", nameLabel: "FRESHO")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "w6")!, name1: "Flat Cut Spicy", name2: "Potato Chips", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹37.50", p2: "₹50", nameLabel: "FRESHO")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "w7")!, name1: "Nutri Choice Sugar", name2: " FreeCream Cracker Biscuits", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹10", p2: "", nameLabel: "FRESHO")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "w8")!, name1: "Bourbon - The Original", name2: "Choco Creame Sandwich", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹10", p2: "", nameLabel: "FRESHO")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "w9")!, name1: "Home Treats - Mini", name2: "Chocolate Bars", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹131.10", p2: "₹149", nameLabel: "FRESHO")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For SnacksBrandedFoodViewController
extension SnacksBrandedFoodViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! SnacksBrandedFoodTableViewCell
        cell.images.image = UIImage(named: arrImage[indexPath.row])
        cell.p1.text = arrCategoryItems[indexPath.row].p1
        cell.p2.text = arrCategoryItems[indexPath.row].p2
        cell.nameLabel1.text = arrCategoryItems[indexPath.row].name1
        cell.nameLabel2.text = arrCategoryItems[indexPath.row].name2
        cell.freshoLabel.text = arrCategoryItems[indexPath.row].nameLabel
        cell.popupButton.tag = indexPath.section
        cell.popupButton.addTarget(self, action: #selector(popupButtonClicked(_:)), for: .touchUpInside)
        cell.pricePopButton.tag = indexPath.row
        cell.pricePopButton.addTarget(self, action: #selector(pricePopButtonTapped(_:)), for: .touchUpInside)
        cell.selectionStyle = .none
        return cell
    }
    
    @objc
    func pricePopButtonTapped(_ sender: UIButton) {
        let indexPath = IndexPath(row: sender.tag, section: 0)
        cell = tableView.cellForRow(at: indexPath) as? SnacksBrandedFoodTableViewCell
        self.popup = PricePopup(frame: self.view.frame)
        self.popup.kgButton.addTarget(self, action: #selector(kgButtonTapped), for: .touchUpInside)
        self.popup.fiveGm.addTarget(self, action: #selector(fiveFiftyGmButtonTapped), for: .touchUpInside)
        self.popup.twoFiftyGmButton.addTarget(self, action: #selector(twoFiftyGmButtonTapped), for: .touchUpInside)
        self.view.addSubview(popup)
    }
    
    @objc func kgButtonTapped() {
        cell?.pricePopButton.setTitle("1 Kg", for: .normal)
        self.popup.removeFromSuperview()
    }
    
    @objc func twoFiftyGmButtonTapped() {
        cell?.pricePopButton.setTitle("250 Gm", for: .normal)
        self.popup.removeFromSuperview()
    }
    
    @objc func fiveFiftyGmButtonTapped() {
        cell?.pricePopButton.setTitle("500 Gm", for: .normal)
        self.popup.removeFromSuperview()
    }
    
    @objc
    func popupButtonClicked(_ sender: UIButton) {
        self.commonPopup = OfferPopupView(frame: self.view.frame)
        self.commonPopup.closeButton.addTarget(self, action: #selector(closeButtonTapped), for: .touchUpInside)
        self.view.addSubview(commonPopup)
        tabBarController?.tabBar.isHidden = true
    }
    
    @objc func closeButtonTapped() {
        self.commonPopup.isHidden = true
        tabBarController?.tabBar.isHidden = false
    }
}
