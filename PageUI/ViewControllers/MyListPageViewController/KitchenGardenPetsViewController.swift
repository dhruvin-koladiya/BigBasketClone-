//
//  KitchenGardenPetsViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class KitchenGardenPetsViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var kitchenGardenPetsTableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["v1", "v2", "v3", "v4", "v5", "v6", "v7", "v8", "v9", "v10"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: KitchenGardenPetsTableViewCell!
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
    
    // MARK: - Get KitchenGardenPetsViewController Page Details
    private func configureTableView() {
        kitchenGardenPetsTableView.register(UINib(nibName: "KitchenGardenPetsTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "v1")!, name1: "Ultra Alkaline AA", name2: "Batteries", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹159", p2: "₹170", nameLabel: "DURACELL")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "v2")!, name1: "Ultra Alkaline", name2: "AAA Batteries", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹159", p2: "₹160", nameLabel: "DURACELL")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "v3")!, name1: "Dry Pet Food -", name2: "For Adult Dogs,...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹729", p2: "₹810", nameLabel: "PEDIGREE")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "v4")!, name1: "Carbon Zinc", name2: "Battery - Heavy...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹64", p2: "₹65", nameLabel: "EVEREADY")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "v5")!, name1: "Dynamic Storage", name2: "Plastic Contain...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹129", p2: "₹199", nameLabel: "ASIAN")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "v6")!, name1: "Glass Bowl - With", name2: "Lid, Polo, High...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹149", p2: "₹185", nameLabel: "YERA")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "v7")!, name1: "LED Bulb - 10", name2: "Watt, Energy E...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹105", p2: "₹200", nameLabel: "PHILIPS")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "v8")!, name1: "Vermi Compost -", name2: "Organic Manure", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹169", p2: "₹180", nameLabel: "NATURES PLUS")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "v9")!, name1: "Plastic Food Bag", name2: "Clips - Multicol...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹85", p2: "₹99", nameLabel: "SWASTIK HOUSEWARES")
        let ten: CategoryCell = CategoryCell(image: UIImage(named: "v10")!, name1: "Aduit Gravy", name2: "Dog Food - Chi...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹675", p2: "₹750", nameLabel: "PEDIGREE")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For KitchenGardenPetsViewController
extension KitchenGardenPetsViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! KitchenGardenPetsTableViewCell
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
        cell = kitchenGardenPetsTableView.cellForRow(at: indexPath) as? KitchenGardenPetsTableViewCell
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
