//
//  ViewController.swift
//  NetworkingDemo
//
//  Created by Isaac Kim on 10/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

import Alamofire
import MBProgressHUD
import SwiftyJSON


class ViewController: UIViewController {

    @IBOutlet weak var cityNameTextField: UITextField!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    var weather: Weather?
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
//       getWeatherData(urlString:"http://api.openweathermap.org/data/2.5/weather?q=London,uk&appid=42dcff9f813d906a176b35b9f9d51796")
        
       fetchNaverAPI(query: "apple")
    }

    @IBAction func getTempButtonTapped(_ sender: Any) {
        
        if let city = cityNameTextField.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) {
            if let encodedString = city.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) {
                getWeatherData(urlString: "http://api.openweathermap.org/data/2.5/weather?q=\(encodedString)&appid=42dcff9f813d906a176b35b9f9d51796")
            }
        }
    }
    
    private func fetchNaverAPI(query: String) {
        let url = URL(string: "https://openapi.naver.com/v1/search/shop.json?query=\(query)")!
        var request = URLRequest(url: url)
        request.setValue("gXNHEbsr4g8csfZTGZCC", forHTTPHeaderField: "X-Naver-Client-Id")
        request.setValue("257bAm0OmZ", forHTTPHeaderField: "X-Naver-Client-Secret")
        
        let task = URLSession.shared.dataTask(with: request, completionHandler: { data, response, error in
            guard error == nil else { return }
            guard let data = data else { return }
            
            let shoppingList = try! JSONDecoder().decode(ShoppingList.self, from: data)
            print(shoppingList.items)
        })
        
        task.resume()
    }
    
    //getting WeatherData
    func getWeatherData(urlString: String) {
        guard let url = URL(string: urlString) else { return }

        let task = URLSession.shared.dataTask(with: url) { (data, response, error) in

            if error  != nil {
                self.errorMessageAlert("Unable to obtain URL. Check network connection and try again")
                return
            }
            else if let data = data
            {
                DispatchQueue.main.async(execute: {self.setLabel(weatherData: data)})
            }
        }
        task.resume()
        
// MBProessHUD()
// To make a load when data is loading
        
//        let hud = MBProgressHUD()
//        hud.label.text = "Loading"
//        view.addSubview(hud)
//        hud.show(animated: true)
//
//
//
//        Alamofire.request(urlString)
//            .validate()
//            .responseJSON { response in
//
//                //hide the load animation
//                hud.hide(animated: true)
//
//                if let weatherJSON = response.result.value {
//
//                    // this can be done with the SwiftyJSON
//
//                    let parsedData = JSON(weatherJSON)
//                    let id = parsedData["id"].int
//                    let cityName = parsedData["name"].string
//                    let temperature = parsedData["main", "temp"].double
//                    let description = parsedData["weather", 0, "description"].string
//
//
//
//                    self.weather = Weather(id: id!, cityName: cityName!, temperature: temperature!, weatherDescription: description!)
//                    self.setLabel()
//
//                    //Alamofire: Rather than blocking execution to wait for a response from the server, a callback is specified to handle the response once it's received. The result of a request is only available inside the scope of a response handler. Any execution contingent on the response, or data received from the server, must be done within a handler.
//
//                    // No need of URL and URL session.
//                    // only needs Alamofire.request(urlString) will do.
//
//
//                } else {
//                    print(response.result.error.debugDescription)
//                }
//
//        }
        
        
    }
        
    
        
    
    
    
    func setLabel(weatherData: Data) {
        do {
            let json = try JSONSerialization.jsonObject(with: weatherData, options: []) as! Dictionary<String, AnyObject>

            if let main = json["main"] as? Dictionary<String, AnyObject> {
                if let temp = main["temp"] as? Double {


                    temperatureLabel.text = String(format: "%.1f", (kelvinToCelsius(kelvin: temp)))
                    //"%.1f decimal place. if we change it to %.3f, it will show three decimal place.
                }
            }
        } catch {
            print("Error feching data")

        }
    
//        if let temp = self.weather?.temperature {
//            if let desc = self.weather?.weatherDescription {
//                temperatureLabel.text = "Temp: \(String(format: "%.1f", kelvinToCelsius(kelvin: temp)))°C Description: \(desc)"
//            }
//        }
//
        
    }
    
    func errorMessageAlert(_ message: String){
        
        let alertController = UIAlertController(title: "Coonection Error", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okButton)
        
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)}
    }
    
    func kelvinToCelsius(kelvin: Double) -> Double {
        var calculatedCelcius = 0.0
        calculatedCelcius = kelvin - 273.15
        return calculatedCelcius
        
    }
        
        
}

    
    


