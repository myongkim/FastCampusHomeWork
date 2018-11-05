//
//  CountryInfo.swift
//  TableViewWithPlist
//
//  Created by Isaac Kim on 05/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import Foundation

struct Country {
    var title: String
    var countries: [CountryInfo]
    
    init(_ dictionary: [String: Any]) {
        self.title = dictionary["Title"] as! String
        
        let data = dictionary["Data"] as! [[String: String]]
        self.countries = data.map(CountryInfo.init)
        
//        self.countries = dictionary["Data"] as! [[String: String]]
    }
}

struct CountryInfo {
    let name: String
    var speed: String?
    var population: String?
    
    init(_ dictionary: [String: String]) {
        self.name = dictionary["Country"]!
        self.speed = dictionary["Speed"]
        self.population = dictionary["Population"]
    }
}
