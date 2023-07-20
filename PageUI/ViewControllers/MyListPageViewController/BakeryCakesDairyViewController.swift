//
//  BakeryCakesDairyViewController.swift
//  PageUI
//
//  Created by ABC on 17/03/23.
//

import UIKit

class BakeryCakesDairyViewController: UIViewController {
    
    // MARK: - IBOutlet
    @IBOutlet weak var tableView: UITableView!
    
    // MARK: - Variables
    var arrImage: [String] = ["r1", "r2", "r3", "r4", "r5", "r6", "r7", "r8", "r9", "r10"]
    var arrCategoryItems: [CategoryCell] = []
    var commonPopup : OfferPopupView!
    var cell: BakeryCakesDairyTableViewCell!
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
    
    // MARK: - Get BakeryCakesDairyViewController Page Details
    private func configureTableView() {
        tableView.register(UINib(nibName: "BakeryCakesDairyTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
    }
    
    private func loadCategory() {
        let one: CategoryCell = CategoryCell(image: UIImage(named: "r1")!, name1: "Cheese Slices -", name2: "Rich In Pritein,...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹140", p2: "", nameLabel: "AMUL")
        let two: CategoryCell = CategoryCell(image: UIImage(named: "r2")!, name1: "Pasteurised", name2: "Butter", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹56", p2: "", nameLabel: "AMUL")
        let three: CategoryCell = CategoryCell(image: UIImage(named: "r3")!, name1: "Goodlife UHT", name2: "Treated Toned ... ", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹30", p2: "", nameLabel: "NANDINI")
        let four: CategoryCell = CategoryCell(image: UIImage(named: "r4")!, name1: "Paneer - Rich In", name2: "Protein, Calciu...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹125", p2: "", nameLabel: "MILKY MIST")
        let five: CategoryCell = CategoryCell(image: UIImage(named: "r5")!, name1: "Curd/Dahi - No", name2: "Preservatives A...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹123", p2: "₹138", nameLabel: "MILKY MIST")
        let six: CategoryCell = CategoryCell(image: UIImage(named: "r6")!, name1: "100% Whole", name2: "Wheat Bread", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹55", p2: "", nameLabel: "BRITANNIA")
        let seven: CategoryCell = CategoryCell(image: UIImage(named: "r7")!, name1: "Pizza Cheese", name2: "Diced - Mozzar...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹118", p2: "", nameLabel: "AMUL")
        let eight: CategoryCell = CategoryCell(image: UIImage(named: "r8")!, name1: "Ultimate Malai", name2: "Paneer - Fresh,...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹85.50", p2: "₹95", nameLabel: "MOTHER DAIRY")
        let nine: CategoryCell = CategoryCell(image: UIImage(named: "r9")!, name1: "Fudge It -", name2: "Chocolate Bro...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹45", p2: "₹60", nameLabel: "BRITANNIA")
        let ten: CategoryCell = CategoryCell(image: UIImage (named: "r10")!, name1: "Curd/Dahi - No", name2: "Preservatives A...", popupButton: "Har Din Sasta!", addButton: "Add", p1: "₹35", p2: "₹38", nameLabel: "MILKY MIST")
        arrCategoryItems = [one, two, three, four, five, six, seven, eight, nine, ten]
    }
}

// MARK: - TableViewDelegate And TableViewDatasource Method For BakeryCakesDairyViewController
extension BakeryCakesDairyViewController: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrCategoryItems.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! BakeryCakesDairyTableViewCell
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
        cell = tableView.cellForRow(at: indexPath) as? BakeryCakesDairyTableViewCell
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
