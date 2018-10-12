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

class Animal {
    let age: Int
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


class Cat: Animal {
    let furColor: String
    let name: String
    
    init(age: Int, species: String, furColor: String, name: String){
        
        self.furColor = furColor
        self.name = name
        // do super init to initialize the upper Class. But self has to be initilize first that is why super is below the furColor and name at this time.
        super.init(age: age, species: species)
    }
    
}

var animal2 = Cat(age: 1, species: "Cat", furColor: "brown", name: "Milo")
print(animal2.species)
print(animal2.furColor)


//Enumerations

enum CatType {
    case tiger
    case leopard
    case panther
    case puma
}
var catType = CatType.tiger
print(catType)























