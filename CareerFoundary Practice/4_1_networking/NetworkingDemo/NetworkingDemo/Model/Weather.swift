//
//  Weather.swift
//  NetworkingDemo
//
//  Created by Isaac Kim on 12/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import Foundation

class Weather {
    var id: Int
    var cityName: String
    var temperature: Double
    var weatherDescription: String
    
    init(id: Int, cityName: String, temperature: Double, weatherDescription: String) {
        self.id = id
        self.cityName = cityName
        self.temperature = temperature
        self.weatherDescription = weatherDescription
    }
    
}
