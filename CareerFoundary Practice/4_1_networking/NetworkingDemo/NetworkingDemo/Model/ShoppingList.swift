//
//  ShoppingList.swift
//  NetworkingDemo
//
//  Created by Isaac Kim on 15/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import Foundation

struct ShoppingList: Decodable, CustomStringConvertible {
    
    var description: String {
        return "items = \(items)"
    }
    
    let items: [ShoppingItem]
    
    enum CodingKeys: String, CodingKey {
        case items = "items"
    }
}

struct ShoppingItem: Decodable, CustomStringConvertible {
    let title: String
    let lprice: String
    
    var description: String {
        return "title = \(title), low Price = \(lprice)\n"
    }
}

