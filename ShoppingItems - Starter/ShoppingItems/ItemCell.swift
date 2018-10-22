//
//  ItemCell.swift
//  ShoppingItems
//
//  Created by giftbot on 2018. 6. 20..
//  Copyright © 2018년 giftbot. All rights reserved.
//

import UIKit

protocol ItemCellDelegate {
    func tapButton(cell: ItemCell)
}

// MARK: - Class Implementation

class ItemCell : UITableViewCell {
  
    var delegate: ItemCellDelegate?
    
    @IBOutlet weak var inventoryLabel: UILabel!
    // MARK: Properties
    
    @IBAction func tap(_ sender: UIButton) {
        delegate?.tapButton(cell: self)
    }
    
  
}


