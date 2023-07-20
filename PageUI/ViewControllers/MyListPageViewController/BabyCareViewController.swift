//
//  BabyCareViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class BabyCareViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["h1", "h2", "h3", "h4", "h5", "h6", "h7", "h8", "h9", "h10"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: BabyCareTableViewCell!
    var popup: PricePopup!
    
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
    
    // MARK: - Get BabyCareViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "BabyCareTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "h1")!, name1: "Wipes - Gentle", name2: "Baby", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹190", p2: "₹200", nameLabel: "HIMALAYA BABY")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "h2")!, name1: "Baby Soap", name2: "Extra Moisturizing", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹62", p2: "", nameLabel: "HIMALAYA BABY")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "h3")!, name1: "Shampoo", name2: "Gentle Baby", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹323", p2: "₹340", nameLabel: "HIMALAYA BABY")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "h4")!, name1: "Sebamed Baby", name2: "Gentle Wash", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹870", p2: "", nameLabel: "SEBAMED")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "h5")!, name1: "Ceregrow ", name2: "Multigrain Cereal ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹300", p2: "₹316", nameLabel: "NESTLE")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "h6")!, name1: "Baby Soap", name2: "Gentle 4+75 Gm", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹156", p2: "₹165", nameLabel: "HIMALAYA BABY")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "h7")!, name1: "Diaper Pants", name2: "Extra Large", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹1112", p2: "₹1399", nameLabel: "PAMPERS")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "8")!, name1: "Cereal", name2: "Ragi & Strawberry", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹349", p2: "", nameLabel: "SLURRP FARM")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "h9")!, name1: "All-Round", name2: "Protection Diap...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹1175", p2: "₹1399", nameLabel: "PAMPERS")
        let ten: CategoryCell = CategoryCell(image: UIImage(named: "h10")!, name1: "Baby Wipes", name2: "With Aloe", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹244", p2: "₹498", nameLabel: "PAMPERS")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For BabyCareViewController
extension BabyCareViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BabyCareTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? BabyCareTableViewCell
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

