//
//  ViewController.swift
//  TableViewExercise
//
//  Created by Isaac Kim on 18/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController01: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    var data = Array(1...20)
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.delegate = self
     
        let refreshControl = UIRefreshControl()
        refreshControl.tintColor = .blue
        refreshControl.attributedTitle = NSAttributedString(string: "Refreshing...")
        
        refreshControl.addTarget(self, action: #selector(reloadData), for: .valueChanged)
        tableView.refreshControl = refreshControl
        
    }
    @objc func reloadData(){
        print("reload")
        //code
        data.reverse()
//        data = data.reversed()
        
        
        //
        if tableView.refreshControl!.isRefreshing{
            tableView.refreshControl?.endRefreshing()
        }
        tableView.reloadData()
        
    }


}

extension ViewController01: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
        
        
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: )
        
        // it has to have a cell before we use it. It is not a optional value
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        print(indexPath)
        
            cell.textLabel?.text = "\(data[indexPath.row])"
        
            return cell
//
//
//        let cell = UITableViewCell(style: .default, reuseIdentifier: "cell")
//        cell.textLabel?.text = "\(count)"
//        count += 1
//        return cell
//
    }
    
}

extension ViewController01: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print("IndexPath: ",indexPath)
        let cell = tableView.cellForRow(at: indexPath)
        print(cell?.textLabel?.text ?? "0")
    }
    
}
