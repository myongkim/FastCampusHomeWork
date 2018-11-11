//
//  ViewController.swift
//  LocationDemo
//
//  Created by Isaac Kim on 11/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit
import CoreLocation


class ViewController: UIViewController, CLLocationManagerDelegate {
    // define the loation with the CLLocation and put it into location
    let locationManager = CLLocationManager()
    
    @IBOutlet weak var address: UILabel!
    @IBOutlet weak var state: UILabel!
    @IBOutlet weak var city: UILabel!
    @IBOutlet weak var country: UILabel!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        address.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        address.layer.borderWidth = 1
        
        state.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        state.layer.borderWidth = 1
        
        city.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        city.layer.borderWidth = 1
        
        country.layer.backgroundColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1)
        country.layer.borderWidth = 1
        
        
    }

    @IBAction func findLocation(_ sender: AnyObject) {
        locationManager.delegate = self
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()
        locationManager.startUpdatingLocation()
   }
    
 
    
    func locationManager(_ manager: CLLocationManager, didFailWithError error: Error) {
        print("Error: " + error.localizedDescription)
    }
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
       
        // reverseGeocodelocation() will convert latitude and longtitude value into location address
        CLGeocoder().reverseGeocodeLocation(manager.location!) { (placemarks, error) in
            if (error != nil) {
                print("Error: " + error!.localizedDescription)
                return
            }
            if placemarks!.count > 0 {
                let placemark = placemarks![0] as CLPlacemark
                self.displayLocationDetails(placemark: placemark, location: manager.location!)
            } else {
                print("Error retrieving data")
            }
        }
    }
    
    func displayLocationDetails(placemark: CLPlacemark, location: CLLocation) {
        locationManager.stopUpdatingLocation()
        print("Latitude: \(location.coordinate.latitude)")
        print("Longtitude: \(location.coordinate.longitude)")
        
        print(placemark.administrativeArea ?? "")
        print(placemark.locality ?? "")
        print(placemark.name)
        print(placemark)
        

        // when I put these code below it does not pass after the return. why is that?
//        guard let locality = placemark.locality,
//              let postalCode = placemark.postalCode,
//              let administrativeArea = placemark.administrativeArea,
//              let country = placemark.country
//         else { return }
//
//
        guard let name = placemark.name,
        let locality = placemark.locality,
        let cityName = placemark.administrativeArea,
        let countryName = placemark.country
            else { return }
        
        address.text = " \(name) "
        state.text = " \(locality) "
        city.text = " \(cityName) "
        country.text = " \(countryName) "
        
        
        print("Locality: \(placemark.locality ?? ""). Postal Code: \(placemark.postalCode ?? ""), Administrative Area: \(placemark.administrativeArea ?? ""), country: \(placemark.country ?? "")")
       
        
        
    }
    
}

