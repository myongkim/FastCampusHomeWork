//
//  ViewController03.swift
//  TableViewExercise
//
//  Created by Isaac Kim on 18/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

struct CellItem {
    let imageName: String
    let name: String
    var isCheck: Bool
    
}

final class ViewController03: UIViewController {

    // [ImageNameString, String, bool] - one set
    var data: [CellItem] = [
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false),
        CellItem(imageName: "bear", name: "bear", isCheck: false),
        CellItem(imageName: "camel", name: "camel", isCheck: false),
        CellItem(imageName: "dog", name: "dog", isCheck: false),
        CellItem(imageName: "buffalo", name: "buffalo", isCheck: false)
        
    ]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}

extension ViewController03: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        // cell UI Update
        let cellData = data[indexPath.row]
        cell.textLabel?.text = cellData.name
        cell.imageView?.image = UIImage(named: "\(cellData.imageName)")
        cell.accessoryType = cellData.isCheck ? .checkmark : .none
        
        
        return cell
    }
    
    
    
    
}

extension ViewController03: UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        // checkout UI Update
//        guard let cell = tableView.cellForRow(at: indexPath) else { return }
        
        var cellData = data[indexPath.row]
        cellData.isCheck.toggle()
        
            //toggle()
//        if cellData.isCheck {
//            cellData.isCheck = false
//        } else {
//            cellData.isCheck = true
//        }
        
        data[indexPath.row] = cellData
        tableView.reloadData()
        
    }
    
}
// cell.imageView?.image = UiImage(named: "imageFileName") it will allow to add image


