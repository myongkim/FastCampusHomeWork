//
//  ViewController.swift
//  tableViewExerciseCareer
//
//  Created by Isaac Kim on 03/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class TableViewController: UIViewController {
    @IBOutlet weak var tableView: UITableView!
    var items = [DataItem]()
    var otherItems = [DataItem]()
    var allItems = [[DataItem]]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for i in 1...12 {
            if i > 9 {
                items.append(DataItem(title: "Title#\(i)", subtitle: "This is subtitle #\(i)", imageName: "img\(i).jpg"))
            } else {
                items.append(DataItem(title: "Title#0\(i)", subtitle: "This is subtitle #0\(i)", imageName: "img0\(i).jpg"))
            }
        }
        
        for i in 1...12 {
            if i > 9 {
                otherItems.append(DataItem(title: "Another Title#\(i)", subtitle: "This is another subtitle#\(i)", imageName: "anim\(i).jpg"))
            } else {
                otherItems.append(DataItem(title: "Another Title#0\(i)", subtitle: "This is another subtitle#0\(i)", imageName: "anim0\(i).jpg"))
            }
            
        }
        
        allItems.append(items)
        allItems.append(otherItems)
//
//        print(allItems)
        
    }
}

extension TableViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "Section #\(section)"
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        print(allItems.count)
        return allItems.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath)
        
        let item = allItems[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = item.title
        cell.detailTextLabel?.text = item.subtitle
        
        if let imageView = cell.imageView,
            let itemImage = item.image {
            imageView.image = itemImage
        } else {
            cell.imageView?.image = nil
        }
        
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        print("section:", section)
        
        print(allItems[section].count)
        return allItems[section].count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            allItems[indexPath.section].remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: .fade)
        }
    }
    
}

extension TableViewController: UITableViewDelegate {
}


