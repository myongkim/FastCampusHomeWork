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
    var data: [[ String : String]] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        receivingFromPlist()
        print(data)
        
        
        
    }

    func receivingFromPlist() {
        guard let path = Bundle.main.path(forResource: "CountryInternetSpeed", ofType: "plist"),
        let contents = NSArray(contentsOfFile: path) as? [[ String : String ]]
        
        else { return }
        
        data = contents
        // should have var data: [[ String : String ]] = [] outside of the scope
        // if we want a data type is different, it can be NSArray or NSDictionary or others
        // function should be loaded to print out the list
        
        
        
    }

}
extension ViewController: UITableViewDataSource {
   
        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return data.count
        }
        
        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = newTableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            
           print(cell)
            
//            cell.textLabel?.text = data[[indexPath.row]][indexPath.row]
            
            return cell
            
        }
}

extension ViewController: UITableViewDelegate {
    
    
}

