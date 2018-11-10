//
//  ViewController.swift
//  NetworkingDemo
//
//  Created by Isaac Kim on 10/11/2018.
//  Copyright © 2018 Isaac Kim. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var cityNameTextField: UITextField!
    @IBOutlet weak var temperatureLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
       getWeatherData(urlString:"http://api.openweathermap.org/data/2.5/weather?q=appid=eaeb29ad384e42896d818deff8432dfa")
        
    }

    @IBAction func getTempButtonTapped(_ sender: Any) {
        
        if let city = cityNameTextField.text?.trimmingCharacters(in: CharacterSet.whitespacesAndNewlines) {
            if let encodedString = city.addingPercentEncoding(withAllowedCharacters: CharacterSet.urlQueryAllowed) {
                getWeatherData(urlString: "http://api.openweathermap.org/data/2.5/weather?q=\(encodedString)&appid=eaeb29ad384e42896d818deff8432dfa")
            }
        }
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
        
    }
        
    
        
    
    
    
    func setLabel(weatherData: Data) {
        do {
            let json = try JSONSerialization.jsonObject(with: weatherData, options: []) as! Dictionary<String, AnyObject>
            
            if let main = json["main"] as? Dictionary<String, AnyObject> {
                if let temp = main["temp"] as? Double {
                    temperatureLabel.text = String(format: "%.1f", temp)
                    //"%.1f decimal place. if we change it to %.3f, it will show three decimal place.
                }
            }
        } catch {
            print("Error feching data")
            
        }
        
        
        
    }
    
    func errorMessageAlert(_ message: String){
        
        let alertController = UIAlertController(title: "Coonection Error", message: message, preferredStyle: .alert)
        let okButton = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        alertController.addAction(okButton)
        
        DispatchQueue.main.async {
            self.present(alertController, animated: true, completion: nil)}
    }
        
        
}

    
    


