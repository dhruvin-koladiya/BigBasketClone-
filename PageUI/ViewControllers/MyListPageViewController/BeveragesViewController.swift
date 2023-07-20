//
//  BeveragesViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class BeveragesViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["t1", "t2", "t3", "t4", "t5", "t6", "t7", "t8", "t9", "t10"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var popup: PricePopup!
    var cell: BeveragesTableViewCell!
    
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
    
    // MARK: - Get BeveragesViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "BeveragesTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "t1")!, name1: "Cofee - Regular", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹300", p2: "", nameLabel: "COTHAS COFFEE")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "t2")!, name1: "Coffee - Powder,", name2: "Extra Strong", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹215", p2: "", nameLabel: "COTHAS COFFEE")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "t3")!, name1: "Assam Teas With", name2: "Gently Rolled A...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹266.80", p2: "₹290", nameLabel: "TATA TEA GOLD")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "t4")!, name1: "Soft Drink", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹38", p2: "₹40", nameLabel: "THUMS UP")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "t5")!, name1: "Tea", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹407", p2: "₹425", nameLabel: "TAJ MAHAL")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "t6")!, name1: "Instant Coffee", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹357", p2: "₹420", nameLabel: "BRU")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "t7")!, name1: "Drink - Fresh 'N'", name2: "Juicy Mango", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹10", p2: "", nameLabel: "FROOTI")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "t8")!, name1: "Care, Rich", name2: "In Taste, Goodn...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹308.75", p2: "₹325", nameLabel: "TATA TEA GOLD")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "t9")!, name1: "Tender Coconut", name2: "Water - No Add...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹42", p2: "₹50", nameLabel: "FRESHO")
        let ten: CategoryCell = CategoryCell(image: UIImage(named: "t10")!, name1: "Energy &", name2: "Nutrition Drink", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹245", p2: "", nameLabel: "BOOST")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For BeveragesViewController
extension BeveragesViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! BeveragesTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? BeveragesTableViewCell
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
