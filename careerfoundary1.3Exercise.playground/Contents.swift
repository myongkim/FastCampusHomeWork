import UIKit


// career foundary 1.3 exercise
// create one method

class Shape {
    var numberOfSides: Int
    
    init(numberOfSides: Int) {
        self.numberOfSides = numberOfSides
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    
}

var shape = Shape(numberOfSides: 7)
var shapeDesciption = shape.simpleDescription()
print(shapeDesciption)

// class inheritance

struct Animal {
    var age: Int
    let species: String
    
    init(age: Int, species: String) {
        self.age = age
        self.species = species
    }
}

var aniaml1 = Animal(age: 5, species: "Tiger")
print("Animal 1 is a \(aniaml1.species) of age \(aniaml1.age)")


var aniaml2 = Animal(age: 2, species: "Lion")
print("Animal 2 is a \(aniaml2.species) of age \(aniaml2.age)")

var tiger1 = Animal(age: 2, species: "Tiger")
var tiger2 = tiger1
tiger2.age = 5

// struct copies the value where as class is the reference type. It means when we make tiger2 = tiger1 the example above, in class it will show the same value as they will point to the same reference which is stored in HEAP. Where as in struct it is a value type that it will copy the variable and makes its own reference point. Therefore, when we changed the value of tiger2, it will only change the tiger2 not tiger1 where the original value stays.
print(tiger1.age)
print(tiger2.age)



//class Cat: Animal {
//    let furColor: String
//    let name: String
//
//    init(age: Int, species: String, furColor: String, name: String){
//
//        self.furColor = furColor
//        self.name = name
//        // do super init to initialize the upper Class. But self has to be initilize first that is why super is below the furColor and name at this time.
//        super.init(age: age, species: species)
//    }
//
//}
//
//var animal2 = Cat(age: 1, species: "Cat", furColor: "brown", name: "Milo")
//print(animal2.species)
//print(animal2.furColor)


//Enumerations

enum CatType {
    case tiger
    case leopard
    case panther
    case puma
}
var catType = CatType.tiger
print(catType)



enum NumberOfSide: Int {
    case triangle = 3
    
    // it will automatically incresae the number by 1. So the square in this case will be 4 and pentagon will be 5
    case square
    case pentagon
    
    func simpleDescription() -> String {
        switch self {
        case .triangle:
            return "Triangle"
        case .square:
            return "Square"
        case .pentagon:
            return "Pentagon"
        }
    }
}

let squareSides = NumberOfSide.square.rawValue


if let convertedPentagonSides = NumberOfSide(rawValue: 5) {
    let pentagonDescription = convertedPentagonSides.simpleDescription()
}



enum Shapper {
    case triangle
    case square
    case pentagon
    
    func simpleDescription() -> String {
        switch self {
        case .triangle:
            return "Triangle"
        case .square:
            return "Square"
        case .pentagon:
            return "Pentagon"
        }
    }
    
}
let square = Shapper.square
let squareDescription = square.simpleDescription()
print(square)
print(squareDescription)



/*
In Playground, create a Person class, set some properties on it and give it some methods. Create an instance of it and call its methods.
*/

enum Gender {
    case male
    case female
}

class Person {
    var name: String
    var age: Int
    var weight: Int
    var gender: Gender
    
    init(name: String, age: Int, weight: Int, gender: Gender) {
        self.name = name
        self.age = age
        self.weight = weight
        self.gender = gender
        
    }
    
    func nameCall() -> String {
        return "Hello my name is \(name), please to meet you My gender is \(gender)"
        
    }
    
}
let person = Person(name: "Issac", age: 34, weight: 160, gender: .male)

person.nameCall()







