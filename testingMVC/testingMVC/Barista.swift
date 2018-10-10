//
//  Barista.swift
//  testingMVC
//
//  Created by Isaac Kim on 10/10/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import Foundation

class Barista {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func makeCoffee(menu: CoffeeMenu) -> Coffee {
        
        switch menu {
        case .americano:
            return Coffee(name: "Americano", price: 1500)
        case .cappucino:
            return Coffee(name: "Cappucino", price: 2000)
        case .Macchiato:
            return Coffee(name: "Macchiato", price: 2500)
        case .espresso:
            return Coffee(name: "Espresso", price: 2000)
        }
        
    }
}


