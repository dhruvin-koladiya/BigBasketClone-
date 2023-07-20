//
//  FoodgrainsOilMasalaViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class FoodgrainsOilMasalaViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["k1", "k2", "k3", "k4", "k5", "k6", "k7", "k8", "k9", "eleven"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: FoodgrainsOilMasalaTableViewCell!
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
    
    // MARK: - Get FoodgrainsOilMasalaViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "FoodgrainsOilMasalaTableViewCell", bundle: nil), forCellReuseIdentifier: "Cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "k1")!, name1: "Atta/Godihittu -", name2: "Whole Wheat", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹460", p2: "₹576", nameLabel: "FRESHO")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "k2")!, name1: "Vacuum Evaporated", name2: "loadised Salt", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹24.5", p2: "₹28", nameLabel: "FRESHO")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "k3")!, name1: "Sun Lite - Sunflower", name2: "Refined Oil", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹138", p2: "₹149", nameLabel: "FRESHO")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "k4")!, name1: "Cumin/Leera/", name2: "Jeerige - Whole", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹93", p2: "₹200", nameLabel: "FRESHO")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "k5")!, name1: "Sona Masoori Raw", name2: "Rice/Akki Super", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹1479", p2: "₹1875", nameLabel: "FRESHO")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "k6")!, name1: "Toor Dal/Togari", name2: "Bele", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹145", p2: "₹199", nameLabel: "FRESHO")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "k7")!, name1: "Organic Peanuts/", name2: "Raw Kadalekayi", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹189", p2: "₹249", nameLabel: "FRESHO")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "k8")!, name1: "Phool Makhana", name2: "", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹79", p2: "₹120", nameLabel: "FRESHO")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "k9")!, name1: "Sugar - Pure & ", name2: "Hygienic Fine Grain, Natural", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹50", p2: "₹60", nameLabel: "FRESHO")
        let ten: CategoryCell = CategoryCell(image: UIImage(named: "eleven")!, name1: "Organic Black", name2: "Pepper/Kari Menasui", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹98", p2: "₹120", nameLabel: "FRESHO")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For FoodgrainsOilMasalaViewController
extension FoodgrainsOilMasalaViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! FoodgrainsOilMasalaTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? FoodgrainsOilMasalaTableViewCell
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
