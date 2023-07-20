//
//  CleaningHouseholdViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class CleaningHouseholdViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["j1", "j2", "j3", "j4", "j5", "j6", "j7", "j8", "j9", "j10"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: CleaningHouseholdTableViewCell!
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
    
    // MARK: - Get CleaningHouseholdViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "CleaningHouseholdTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "j1")!, name1: "Disinfectant", name2: "Surface & Floor...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹213.40", p2: "₹220", nameLabel: "LIZOL")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "j2")!, name1: "Sandal Agarbatti", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹50", p2: "", nameLabel: "MANGALDEEP")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "j3")!, name1: "Easy Wash", name2: "Detergent Pow... ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹218", p2: "₹235", nameLabel: "SURF EXCEL")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "j4")!, name1: "Dishwash Bar -", name2: "Lemon", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹65", p2: "", nameLabel: "VIM")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "j5")!, name1: "Detergent Bar", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹122", p2: "", nameLabel: "SURF EXCEL")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "j6")!, name1: "Disinfetctant", name2: "Toilet Cleaner Loquid", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹208.55", p2: "₹215", nameLabel: "HARPIC")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "j7")!, name1: "Dishwash Liquid", name2: "Gel - Lemon", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹189", p2: "₹199", nameLabel: "VIM")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "j8")!, name1: "Herbal Floor", name2: "Cleaner", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹316.80", p2: "₹360", nameLabel: "NIMYLE")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "j9")!, name1: "Detergent -", name2: "Liquid, Matic,...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹440", p2: "₹480", nameLabel: "SURF EXCEL")
        let ten: CategoryCell = CategoryCell(image: UIImage (named: "j10")!, name1: "Dishwash Liquid", name2: "Gel Lemon Refill Pouch", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹395", p2: "₹445", nameLabel: "VIM")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For CleaningHouseholdViewController
extension CleaningHouseholdViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CleaningHouseholdTableViewCell
        cell.images.image = UIImage(named: arrImage[indexPath.row])
        cell.p1.text = arrCategoryItems[indexPath.row].p1
        cell.p2.text = arrCategoryItems[indexPath.row].p2
        cell.nameLabel1.text = arrCategoryItems[indexPath.row].name1
        cell.nameLabel2.text = arrCategoryItems[indexPath.row].name2
        cell.freshoLabel.text = arrCategoryItems[indexPath.row].nameLabel
        cell.popupButton.tag = indexPath.section
        cell.popupButton.addTarget(self, action: #selector(popupButtonClicked(_:)), for: .touchUpInside)
        cell.priceButton.tag = indexPath.row
        cell.priceButton.addTarget(self, action: #selector(pricePopButtonTapped(_:)), for: .touchUpInside)
        cell.selectionStyle = .none
        return cell
    }
    
    @objc
    func pricePopButtonTapped(_ sender: UIButton) {
        let indexPath = IndexPath(row: sender.tag, section: 0)
        cell = tableView.cellForRow(at: indexPath) as? CleaningHouseholdTableViewCell
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
