//
//  GourmetWorldFoodViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class GourmetWorldFoodViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["u1", "u2", "u3", "u4", "u5", "u6", "u7", "u8"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: GourmetWorldFoodTableViewCell!
    var popup : PricePopup!
    
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
    
    // MARK: - Get GourmetWorldFoodViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "GourmetWorldFoodTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "u1")!, name1: "Dueum Wheat", name2: "Pasta - Penne R...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹149.50", p2: "₹299", nameLabel: "BORGES")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "u2")!, name1: "Premium Californian", name2: "Roasted &...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹335.75", p2: "₹395", nameLabel: "HAPPILO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "u3")!, name1: "Greek Yogurt -", name2: "Natural", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹220", p2: "", nameLabel: "EPIGAMIA")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "u4")!, name1: "Premium Lightly", name2: "Salted & Roast...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹239.25", p2: "₹275", nameLabel: "HAPPILO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "u5")!, name1: "Ramen Noodles", name2: "Hot Chiken ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹130", p2: "", nameLabel: "SAMYANG")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "u6")!, name1: "Cheese Slices", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹123.95", p2: "₹185", nameLabel: "THE LAUGHING COW")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "u7")!, name1: "100% Natural", name2: "Premium Califo...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹432", p2: "₹675", nameLabel: "HAPPILO")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "u8")!, name1: "Peanut Miniature", name2: "Chocolate", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹169", p2: "₹199", nameLabel: "SNICKERS")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For GourmetWorldFoodViewController
extension GourmetWorldFoodViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! GourmetWorldFoodTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? GourmetWorldFoodTableViewCell
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
