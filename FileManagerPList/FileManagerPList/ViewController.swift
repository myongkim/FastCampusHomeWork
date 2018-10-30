//
//  ViewController.swift
//  FileManagerPList
//
//  Created by Isaac Kim on 29/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var tableView: UITableView!
    private var data: [ String : [String] ] = [:]
    private var dataKey = [String]()
    
    
    
//    let plistUrl = Bundle.main.url(forResource: "idolList", withExtension: "plist")
//    let fileManager = FileManager.default
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        testFile()
        print(data)
        
        print(data.values.count)
      
        
        
    }
    
    func testFile() {
        guard let path = Bundle.main.path(forResource: "idolList", ofType: "plist"),
        let contents = NSDictionary(contentsOfFile: path) as? [String : [String]]
            else {return}
        data = contents
        
        dataKey = ["Girl", "Boy"]
      
        
        
    }


}
extension ViewController: UITableViewDataSource {
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
       
        return data.keys.count
//            dataKey.count
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       
        print( data[dataKey[section]]?.count)
        return (data[dataKey[section]]?.count)!
       
        
    }
    

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath)
        cell.textLabel?.text = String(data[dataKey[indexPath.section]]![indexPath.row])
        return cell
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return dataKey[section]
    }



}
