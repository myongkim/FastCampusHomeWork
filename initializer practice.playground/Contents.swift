import UIKit




struct Celcius {
    
    // initial variable
    var temperatureToCelcius: Double
    
    // custom initialization
    init(fromFarenheit fahreneit: Double) {
        temperatureToCelcius = (fahreneit - 32.0) / 1.8
    }
    // it can make many initialization with it.
    init(fromKelvin kelvin: Double) {
        temperatureToCelcius = kelvin - 273.15
    }
    
    init(_ celcius: Double){
        temperatureToCelcius = celcius
        
    }
    
}

let boilingPointWater = Celcius(fromFarenheit: 212.0)
let freezingPointWater = Celcius(fromKelvin: 273.15)

print(boilingPointWater)
print(freezingPointWater)


struct Color {
    
    let red, green, blue: Double
        init(red: Double, green: Double, blue: Double){
            self.red = red
            self.green = green
            self.blue = blue
        }
    
        init(white: Double) {
            
            red = white
            green = white
            blue = white
            
        }
}

let magenta = Color(red: 1.0, green: 0.0, blue: 1.0)
let halfGray = Color(white: 0.5)

print(magenta)
print(halfGray)
// need a argument label. Since we made an argument label on struct Color , it has to have argument label to use it so.
//let VeryGreen = Color(0.0, 1.0, 0.0)


// if we wanted to use no argument label, please take a look at it for the struct Celcius

let bodyTemperature = Celcius(37)

// optional Initialization

class SurveyQuestion {
    let text: String
    var response: String?
    init(text: String){
        self.text = text
    }
    
    func ask() {
        print(text)
    }

    
}
let cheeseQuestion = SurveyQuestion(text: "Do you liek Cheese?")
cheeseQuestion.ask()
//cheeseQuestion.response = "Yes, I do like cheese."
//print(cheeseQuestion.response)

let beetsQuestion = SurveyQuestion(text: "How about beets?")
beetsQuestion.ask()
beetsQuestion.response = "I also like beets. (But not with cheese.)"
print(beetsQuestion.response)






