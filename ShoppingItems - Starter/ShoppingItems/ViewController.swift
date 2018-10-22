//
//  ViewController.swift
//  ShoppingItems
//
//  Created by giftbot on 2018. 6. 20..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

final class ViewController: UIViewController {
  
  @IBOutlet private weak var tableView: UITableView!
   var inventoryNum = 0
   var total = 0
   var message = "Sorry you cannot buy more item. You purchaesd maxed out the item"
   let identifier = "ItemCell"
    
 
    
    
    var data: [itemProperty] = []
    
  override func viewDidLoad() {
    super.viewDidLoad()
   
    data = createArray()
    
    
  }
    
    func createArray() -> [itemProperty] {
        
        var tempItem: [itemProperty] = []
        
        let item1 = itemProperty(imageName: "iPhone8", productName: "iphone 8", count: 5)
        let item2 = itemProperty(imageName: "iPhoneSE_Gold", productName: "iPhoneSE Gold", count: 5)
        let item3 = itemProperty(imageName: "iPhoneSE_RoseGold", productName:"iPhoneX RoseGold", count: 7)
        let item4 = itemProperty(imageName: "iPhoneX_SpaceGray", productName: "iPhoneX Space Gray", count: 7)
        let itme5 = itemProperty(imageName: "iPhoneX_White", productName: "iPhoneX White", count: 7)
        
        tempItem.append(item1)
        tempItem.append(item2)
        tempItem.append(item3)
        tempItem.append(item4)
        tempItem.append(itme5)
        
        return tempItem
    }

    


    @IBAction func increaseBuyButton(_ sender: UIButton) {
       print("tapped")
        
//        let itemInfo = ItemCell()
       
//         itemInfo.inventoryLabel?.text = "\(total)"
//        print(itemInfo.inventoryLabel?.text)
        // do increase the number but here i see a nil value for the inventoryLabel
        
     
        
        if total > 15 {
            
            let alertViewController = UIAlertController(title: "Max # purchased", message: message, preferredStyle: .alert)
            let dismiss = UIAlertAction(title: "Dimiss", style: .cancel, handler: nil)
            
            alertViewController.addAction(dismiss)
            present(alertViewController, animated: true)
        } else {
            inventoryNum += 1
            total = inventoryNum
             print(inventoryNum)
             print(total)
        }
        
        
       
        
        
        
    }
    
    
}

// MARK: - UITableViewDataSource

extension ViewController: UITableViewDataSource {
  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    
    return data.count
    
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    
    let cell = tableView.dequeueReusableCell(withIdentifier: identifier, for: indexPath) as! ItemCell
    let dataCell = data[indexPath.row]
    print(data.count)
    cell.delegate = self
    cell.textLabel?.text = dataCell.productName
    cell.imageView?.image = UIImage(named: "\(dataCell.imageName)")
//    cell.detailTextLabel?.text = inventoryLabel.text
    cell.detailTextLabel?.text = "12"
//    print(cell.detailTextLabel?.text)
   cell.detailTextLabel?.text = "\(dataCell.count)"
    print("datacellcount", dataCell.count)
    
    return cell
  }
   
    
}

extension ViewController: ItemCellDelegate {
    
    func tapButton(cell: ItemCell) {
        guard let indexPath = tableView.indexPath(for: cell) else { return }
        // Model Update
        data[indexPath.row].count += 1
        
        cell.inventoryLabel.text = "\(data[indexPath.row].count)"
    }
    
}
