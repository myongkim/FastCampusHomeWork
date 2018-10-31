//
//  ViewController.swift
//  PlistPractice
//
//  Created by Isaac Kim on 30/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data: [String :[String]] = [:]
    var keyData: [String] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        receivingDataFromPlist()
        
    }

    
    func receivingDataFromPlist() {
        guard let path = Bundle.main.path(forResource: "chineseFoodData", ofType: "plist"),
        let contents = NSDictionary(contentsOfFile: path) as? [ String: [String]]
        
            else { return }
        data = contents
//        for (key, _) in data {
//            keyData.append(key)
//        }
        keyData  = ["Appitizer", "Main Menu" ,"Desert"]
    }
    



}

extension ViewController: UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return data.keys.count

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return (data[keyData[section]]?.count)!
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = String(data[keyData[indexPath.section]]![indexPath.row])
        
        return cell
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return keyData[section]
    }
    
    
    
}

extension ViewController: UITableViewDelegate {
}
