//
//  ListOfViewController.swift
//  tableViewExerciseCareer
//
//  Created by Isaac Kim on 05/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

struct Route {
    static let tableViewController1 = "tableViewController1"
    static let tableViewController2 = "tableViewController2"
    
    
}

class ListOfViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    let cellName = "listCell"
    var count = 1
    var numberOfViewController = [Route.tableViewController1, Route.tableViewController2]
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    override func unwind(for unwindSegue: UIStoryboardSegue, towards subsequentVC: UIViewController) {
    }
}

extension ListOfViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
      
        return numberOfViewController.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellName, for: indexPath)
        
        cell.textLabel?.text = "ViewController 0\(count)"
        count += 1
        
        
        return cell
    }
    
    
}


    


extension ListOfViewController: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.row == 0 {
            performSegue(withIdentifier: Route.tableViewController1, sender: nil)
            
        } else if indexPath.row == 1 {
            performSegue(withIdentifier: Route.tableViewController2, sender: nil)
            
        }
    }
    
    
    
}
