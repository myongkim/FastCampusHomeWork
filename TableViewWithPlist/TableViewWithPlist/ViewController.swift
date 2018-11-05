//
//  ViewController.swift
//  TableViewWithPlist
//
//  Created by Isaac Kim on 04/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var newTableView: UITableView!
    var data: [Country] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        receivingFromPlist()
        print(data)
     
    }
    
    func receivingFromPlist() {
        guard let path = Bundle.main.path(forResource: "CountryPolulation", ofType: "plist"),
            let contents = NSArray(contentsOfFile: path) as? [[String: Any]]
        else { return }
        self.data = contents.map(Country.init)
//        data = contents
        // should have var data: [[ String : String ]] = [] outside of the scope
        // if we want a data type is different, it can be NSArray or NSDictionary or others
        // function should be loaded to print out the list
        
    }
    
}
extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        guard let result = data[section]["Data"] as? [[String: String]] else { return 0 }
//        return result.count
        return data[section].countries.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = newTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
//        let cellData = data[indexPath.section]["Data"] as! [[String: String]]
        let cellData = data[indexPath.section].countries[indexPath.row]
        
        if indexPath.section == 0 {
            cell.textLabel?.text = cellData.name
            cell.detailTextLabel?.text = cellData.speed
        } else {
            cell.textLabel?.text = cellData.name
            cell.detailTextLabel?.text = cellData.population

        }
//        print(cell)
        
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
       return data[section].title
    }
}

extension ViewController: UITableViewDelegate {
    
    
}

