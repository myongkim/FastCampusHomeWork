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
//print(beetsQuestion.response)


// default initializer
class ShoppingListItem {
    
    var name: String? //return nil
    var quantity = 1 // return 1
    var purchased = false // return false
    
}
var item = ShoppingListItem()


// Memberwise Initializers for Strucuture Types
struct Size {
    // even though we do not have initializer, it will pass the name of the value to the initializer
    var width = 0.0, height = 0.0
}
struct Point {
    var x = 0.0, y = 0.0
    
}


let twoByTwo = Size(width: 2.0, height: 2.0)

struct Rect {
    var origin = Point()
    var size = Size()
    init() {}
    init(origin: Point, size: Size) {
        self.origin = origin
        self.size = size
    }
    
    init(center: Point, size: Size) {
        let originX = center.x - (size.width / 2 )
        let originY = center.y - (size.height / 2)
        
        self.init(origin: Point(x: originX, y: originY), size: size)
        
    }
}

let basicRect = Rect()
let originREct = Rect(origin: Point(x: 2.0, y: 2.0), size: Size(width: 5.0, height: 5.0))
let centerRect = Rect(center: Point(x: 4.0, y: 4.0), size: Size(width: 3.0, height: 3.0))


class Vehicle {
    var numberOfWheels = 0
    var description: String {
        return "\(numberOfWheels) wheels(s)"
        
    }
}

let vehicle = Vehicle()
print("vehicle: \(vehicle.description)")

//subclass

class Bicycle: Vehicle {
    override init() {
        super.init()
        numberOfWheels = 2
        
    }
}

let bicycle = Bicycle()
print("Bicycle: \(bicycle.description)")

class Hoverboard: Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        //super.init() implicitly called here
    }
    override var description: String {
        return "\(super.description) in a beatiful \(color)"
    }
}

let hoverboard = Hoverboard(color: "silver")
print("Hoverboard: \(hoverboard.description)")
//subclasses can modify inherited variable properties during initialization, but can not modify inherited constant properties.


