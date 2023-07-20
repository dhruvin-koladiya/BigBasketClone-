//
//  ApiViewController.swift
//  PageUI
//
//  Created by ABC on 27/03/23.
//

import UIKit
import Alamofire

class ApiViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var arrTemperature: [Activities] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        getTemperatureDataApi()

        
    }
    
    func getTemperatureDataApi() {
        AF.request("https://api.arcsecond.io/activities/?format=json", method: .get).responseData { response in
            debugPrint("Response: \(response)")

            guard let apiData = response.data else { return }

            do {
                let temperature = try JSONDecoder().decode(Activities.self, from: apiData)
                print(temperature)
                self.arrTemperature = temperature
                self.tableView.reloadData()
            } catch {
                print("Parsing Error")
            }
        }
    }
}

struct Activities: Decodable {
    
    var count: Int
    var next: String
    var results: [Results]
}

struct Results: Decodable {
    var id: Int
    var creationDate: String
    var date: String
    var title: String
    var content: String
    var label: String
    var profile: String
    var organisation: String
    var programmeType: String
    var targetName: String
    
    private enum codingKeys: String, CodingKey {
        
        case id, date, title, content, label, profile, organisation
        case creationDate = "creation_date"
        case programmeType = "programme_type"
        case targetName = "target_name"
    }
}



extension ApiViewController: UITableViewDelegate, UITableViewDataSource {


    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTemperature.count
    }


    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell  = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! ApiTableViewCell
        cell.titleLabel?.text = arrTemperature[indexPath.row].count
        return cell

    }

//struct Temp: Decodable {
//
//    var metadata: Metadata
//    var items: [Items]
//    var apiInfo: ApiInfo
//
//    private enum CodingKeys: String, CodingKey {
//        case matadata
//        case items
//        case apiInfo = "api_info"
//    }
//}
//
//
//struct Metadata: Decodable {
//
//    var stations: [Stations]
//    var readingType: String
//    var readingUnit: String
//
//    private enum CodingKeys: String, CodingKey  {
//        case stations
//        case readingType = "reading_type"
//        case readingUnit =  "reading_unit"
//    }
//}
//
//struct Stations: Decodable {
//    var id: String
//    var deviceId: String
//    var name: String
//    var location: Location
//
//    private enum CodingKeys: String, CodingKey  {
//        case id, name, location
//        case deviceId = "device_id"
//    }
//}
//
//
//struct Items: Decodable {
//    var timestamp: String
//    var readings: [Readings]
//
//    private enum CodingKeys: String, CodingKey {
//        case timestamp, readings
//    }
//}
//
//struct Readings: Decodable {
//    var stationId: String
//    var value: Int
//
//    private enum CodingKeys: String, CodingKey {
//        case stationId = "station_id"
//        case value
//    }
//}
//
//struct  Location: Decodable {
//    var latitude: Double
//    var longitude: Double
//
//    private enum CodingKeys: String, CodingKey {
//        case latitude, longitude
//    }
//}
//
//struct ApiInfo: Decodable {
//    var status: String
//
//    private enum CodingKeys: String, CodingKey {
//        case status
//    }
//}
