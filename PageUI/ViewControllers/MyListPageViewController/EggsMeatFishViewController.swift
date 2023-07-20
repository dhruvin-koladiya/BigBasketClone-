//
//  EggsMeatFishViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class EggsMeatFishViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["p1", "p2", "p3", "p4", "p5", "p6", "p7", "p8", "p9"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: EggsMeatFishTableViewCell!
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
    
    // MARK: - Get EggsMeatFishViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "EggsMeatFishTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "p1")!, name1: "Farm Eggs", name2: "Regular, Medium...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹49", p2: "₹65", nameLabel: "FRESHO")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "p2")!, name1: "Chiken Breast", name2: "Boneless, Anti...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹224", p2: "₹337", nameLabel: "FRESHO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "p3")!, name1: "Farm Eggs", name2: "Brown, Medium", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹89", p2: "₹115", nameLabel: "FRESHO")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "p4")!, name1: "Chicken - Curry", name2: "Cut Without", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹242", p2: "₹363", nameLabel: "FRESHO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "p5")!, name1: "Eggs Peawns", name2: "Range ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹269", p2: "", nameLabel: "FARM MADE")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "p6")!, name1: "Frozen Prawns", name2: "Medium", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹280", p2: "₹350", nameLabel: "FRESHO")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "p7")!, name1: "Chiken Sausage", name2: "Beechwood", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹180", p2: "₹190", nameLabel: "PRASUMA")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "p8")!, name1: "White Farm", name2: "Fresh Eggs", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹128", p2: "₹135", nameLabel: "EGGOZ")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "p9")!, name1: "Eggs - Whole", name2: "some, Rich In...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹275", p2: "", nameLabel: "BEST BUY")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For EggsMeatFishViewController
extension EggsMeatFishViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! EggsMeatFishTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? EggsMeatFishTableViewCell
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

