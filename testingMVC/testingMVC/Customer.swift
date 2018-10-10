//
//  Customer.swift
//  testingMVC
//
//  Created by Isaac Kim on 10/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import Foundation

class Customer {
    
    var name: String
    init(name: String){
        self.name = name
    }
    func order(barista: Barista,menu: CoffeeMenu) -> String {
        
        let coffee = barista.makeCoffee(menu: menu)
        return ("\(self.name) ordered 1 \(menu) from \(barista.name) costing ₩\(coffee.price)")
    }
    
}




