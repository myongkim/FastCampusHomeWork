//
//  TableViewController.swift
//  TableViewWithExercise
//
//  Created by Isaac Kim on 21/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {

    let data: [Int] = [1,3,5,6,2,5]
    let identifier = "cell"
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
  
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier:identifier , for: indexPath)
        
        let dataCell = data[indexPath.row]
        cell.textLabel?.text = "\(dataCell)"
       
        return cell
        
        
    }
    
  
    
}

extension TableViewController: UITableViewDelegate {
    
    
    
}
