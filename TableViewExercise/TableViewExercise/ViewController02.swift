//
//  ViewController02.swift
//  TableViewExercise
//
//  Created by Isaac Kim on 18/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController02: UIViewController {

    let data = Array(0...48)
    let numberOfRowInSection = 100

    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

}

extension ViewController02: UITableViewDataSource {
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(section)
        if section != (data.count / 10) {
            return 10
        } else {
            return data[(section * 10)...].count
        }
}



        

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        print(indexPath)
        
        cell.textLabel?.text = "\(indexPath.section * 10 + indexPath.row)"
      return cell
        
    }
    
    func numberOfSections(in tableView: (UITableView)) -> Int {
        //data.count = 11 / 10 -> 1+ 1
        // data.count = 20/ 10 -> 2
        
        var count = data.count / 10
        if (data.count % 10) != 0 {
            count += 1
        }
        return count
        
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "\(section)"
    }
    

    
}


extension ViewController02: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        print(indexPath)
        
    }
    
    
}
