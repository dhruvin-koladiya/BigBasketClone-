//
//  ApiCallViewController.swift
//  PageUI
//
//  Created by ABC on 27/03/23.
//

import UIKit
import Alamofire
import SwiftUI

class ApiCallViewController: UIViewController {

    @IBOutlet weak var tableview: UITableView!
    //var arr: [Activities] = []
    override func viewDidLoad() {
        super.viewDidLoad()
       // apiXibRegistra()
       // getApiCall()

       
    }
    
//    func getApiCall() {
//        AF.request("https://api.arcsecond.io/activities/?format=json", method: .get).responseData { response in
//            debugPrint("Response: \(response)")
//
//            guard let apiData = response.data else { return }
//
//            do {
//                let activities = try JSONDecoder().decode(Activities.self, from: apiData)
//                print(activities)
//                self.arr = [activities]
//                self.tableview.reloadData()
//            } catch {
//                print("Parsing Error")
//            }
//        }
//    }
//
//    private func apiXibRegistra() {
//        tableview.register(UINib(nibName: "ApiTableViewCell", bundle: nil), forCellReuseIdentifier: "cell")
//    }
//}


//struct Activities: Decodable {
//
//    var count: Int
//    var next: String
//    var results: [Results]
//}
//
//struct Results: Decodable {
//    var id: Int
//    var creationDate: String
//    var date: String
//    var title: String
//    var content: String
//    var label: String
//    var profile: String
//    var organisation: String
//    var programmeType: String
//    var targetName: String
//
//    private enum codingKeys: String, CodingKey {
//
//        case id, date, title, content, label, profile, organisation
//        case creationDate = "creation_date"
//        case programmeType = "programme_type"
//        case targetName = "target_name"
//    }
//}
//
//
//extension ApiTableViewCell: UITableViewDelegate, UITableViewDataSource {
//
//
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return arr
//    }
//
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ApiTableViewCell
//        cell.titleLabel?.text = arr[indexPath.row].id
//        return cell
//
//    }
//
//
//
}
