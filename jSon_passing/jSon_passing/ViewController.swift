//
//  ViewController.swift
//  jSon_passing
//
//  Created by Isaac Kim on 22/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let tableView = UITableView()
    
    var users = [String: Array<String>]()
    var usersKeys = [String]()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        navigationItem.title = "07"
        
        self.tableView.dataSource = self
        tableView.frame = CGRect(x: 0, y: 50, width: view.frame.width, height: view.frame.height - 50)
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "cell")
        view.addSubview(tableView)
        
        parseJSON()
    }
    
//    struct dataName {
//        let userName: String
//        let userID: Int
//        let userEmail: String
//        let userWebSite: String
//    }
//
//    var dataArray = [dataName]()
    
    func parseJSON() {
        do {
            if let file = URL(string: "https://jsonplaceholder.typicode.com/users") {
                let data = try Data(contentsOf: file)
                let json = try JSONSerialization.jsonObject(with: data, options: [])
                if let object = json as? [Any] {
                    for anItem in object as! [Dictionary<String, Any>] {
//                        let userData = dataName(userName: anItem["name"] as! String, userID: anItem["id"] as! Int, userEmail: anItem["email"] as! String, userWebSite: anItem["website"] as! String)
//                        dataArray.append(userData)
//
                        let userName = anItem["name"] as! String
                        
                        let userID = "ID : \(anItem["id"] as! Int)"
                        let userEmail = "Email : \(anItem["email"] as! String)"
                        let userPhone = "Phone : \(anItem["phone"] as! String)"
                        let userWebsite = "Website : \(anItem["website"] as! String)"
                        
                        let userData: [String] = [userID, userEmail, userPhone, userWebsite]
                        users[userName] = userData
                        
                        usersKeys.append(userName)
                    }
                } else {
                    print("JSON is invalid")
                }
            } else {
                print("no file")
            }
        } catch {
            print(error.localizedDescription)
        }
    }
}

extension ViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return usersKeys.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users[usersKeys[section]]!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = "\(users[usersKeys[indexPath.section]]![indexPath.row])"
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return usersKeys[section]
    }
}
