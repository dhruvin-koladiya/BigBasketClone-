//
//  BeautyHygieneViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class BeautyHygieneViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["z1", "z2", "z3", "z4", "z5", "z6", "z7", "z8", "z9"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var popup: PricePopup!
    var cell: BeautyHygieneTableViewCell!
    
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
    
    // MARK: - Get BeautyHygieneViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "BeautyHygieneTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "z1")!, name1: "Ayurvedic Bathing Soap With", name2: "18 Herbs, Effective for Skin Problem ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹127", p2: "", nameLabel: "FRESHO")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "z2")!, name1: "Strong Teeth : India's No.", name2: "1 Toothpaste", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹120", p2: "", nameLabel: "FRESHO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "z3")!, name1: "Cream Beauty", name2: "Bathing Bar..., ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹280", p2: "", nameLabel: "FRESHO")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "z4")!, name1: "Sanitary Pads", name2: "- Maxi Nights XL..", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹195", p2: "", nameLabel: "FRESHO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "z5")!, name1: "Cocoa Nourish", name2: "Oil In Loation - Very...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹337.35", p2: "₹519", nameLabel: "FRESHO")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "z6")!, name1: "Liquid Handwash", name2: "Refill - Original...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹198", p2: "₹220", nameLabel: "FRESHO")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "z7")!, name1: "Super Light Gel", name2: "Moisturiser - With...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹178.20", p2: "₹220", nameLabel: "FRESHO")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "z8")!, name1: "Ultra Clean", name2: "Sanitary Pads - XL Plus...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹516.75", p2: "₹689", nameLabel: "FRESHO")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "z9")!, name1: "Total  Whole", name2: "Mouth Health, Antibacterial", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹253.30", p2: "₹298", nameLabel: "FRESHO")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For BeautyHygieneViewController
extension BeautyHygieneViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BeautyHygieneTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? BeautyHygieneTableViewCell
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
