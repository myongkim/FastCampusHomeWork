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
    
    
 
    
    
    var data: [itemProperty] = [
   
        itemProperty(imageName: "iPhone8", productName: "iphone 8"),
        itemProperty(imageName: "iPhoneSE_Gold", productName: "iphoneSE Gold"),
        itemProperty(imageName: "iPhoneSE_RoseGold", productName: "iphone Rose Gold"),
        itemProperty(imageName: "iPhoneX_SpaceGray", productName: "iphoneX Space Gray"),
        itemProperty(imageName: "iPhoneX_White", productName: "iphone X White"),
      
        itemProperty(imageName: "iPhone8", productName: "iphone 8"),
        itemProperty(imageName: "iPhoneSE_Gold", productName: "iphoneSE Gold"),
        itemProperty(imageName: "iPhoneSE_RoseGold", productName: "iphone Rose Gold"),
        itemProperty(imageName: "iPhoneX_SpaceGray", productName: "iphoneX Space Gray"),
        itemProperty(imageName: "iPhoneX_White", productName: "iphone X White"),
      
        itemProperty(imageName: "iPhone8", productName: "iphone 8"),
        itemProperty(imageName: "iPhoneSE_Gold", productName: "iphoneSE Gold"),
        itemProperty(imageName: "iPhoneSE_RoseGold", productName: "iphone Rose Gold"),
        itemProperty(imageName: "iPhoneX_SpaceGray", productName: "iphoneX Space Gray"),
        itemProperty(imageName: "iPhoneX_White", productName: "iphone X White"),
    
        itemProperty(imageName: "iPhone8", productName: "iphone 8"),
        itemProperty(imageName: "iPhoneSE_Gold", productName: "iphoneSE Gold"),
        itemProperty(imageName: "iPhoneSE_RoseGold", productName: "iphone Rose Gold"),
        itemProperty(imageName: "iPhoneX_SpaceGray", productName: "iphoneX Space Gray"),
        itemProperty(imageName: "iPhoneX_White", productName: "iphone X White")
        
        
        
   ]
    
  override func viewDidLoad() {
    super.viewDidLoad()
   
    
    
  }


    @IBAction func increaseBuyButton(_ sender: UIButton) {
       print("tapped")
        
        let itemInfo = ItemCell()
       
        // itemInfo.inventoryLabel?.text = "\(total)"
        print(itemInfo.inventoryLabel?.text)
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
    let cell = tableView.dequeueReusableCell(withIdentifier: "ItemCell", for: indexPath)
    
    print(data.count)
    let dataCell = data[indexPath.row]
    cell.textLabel?.text = dataCell.productName
    cell.imageView?.image = UIImage(named: "\(dataCell.imageName)")
//    cell.detailTextLabel?.text = inventoryLabel.text
    cell.detailTextLabel?.text = "12"
//    print(cell.detailTextLabel?.text)
   
    return cell
  }
   
    
}

