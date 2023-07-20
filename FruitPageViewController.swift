//
//  FruitPageViewController.swift
//  PageUI
//
//  Created by ABC on 15/04/23.
//

import UIKit

var fruitPageData = [images (image: ["image3"])]


class FruitPageViewController: UIViewController {

   
    @IBOutlet weak var TableView: UITableView!
    
    var tableViewCell: [String] = ["FruitImageTableViewCell1"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setup()
    }
    
    private func setup() {
        config()
    }

    private func config() {
        tableViewCell.forEach { cellName in
            TableView.register(UINib(nibName: cellName, bundle: nil), forCellReuseIdentifier: cellName)
        }
   }
}


extension FruitPageViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return fruitPageData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "FruitImageTableViewCell1", for: indexPath) as! FruitImageTableViewCell1
        cell.fruitImage1.tag = indexPath.section
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
}
