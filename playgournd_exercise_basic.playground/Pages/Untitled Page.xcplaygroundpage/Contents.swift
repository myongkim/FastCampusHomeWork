import UIKit


var myStr = "Hello"
print(myStr)

// string is not a nil so it will make error
//var emptyStr : String = nil

var optString: String? = "This is an optional"

optString?.uppercased()
optString!.uppercased()
print(optString)

if let unwrapped = optString {
    print(unwrapped.uppercased())
} else {
    print("Contains nil")
}

// implicit Unwrapping
var impOpt: String! = "Hey"
print(impOpt.uppercased())

let number = 2001

if number < 0  {
    print("the number is negative")
    // this is the way you can write if within if.
} else if number > 1000, number < 2000 {
    print("the number is between 1000 and 2000")
} else {
    print("The number is great than 1000")
}

enum Ingredient {
    case chocolate
    case pumpkin
    case peanutButter
    
}

func enumFunc(ingredient: Ingredient) {
    
    switch ingredient {
        case .chocolate: print("This is chocolate")
        case .peanutButter: print("This is peanut Butter")
        case .pumpkin: print("This is pumpkin")
    }
    
}

enumFunc(ingredient: .chocolate)


let ingredient = "chocolate"
switch ingredient {
    case "pumpkin" :
        let ingredientComment = "Whip Yourself up a pie!"
    case "peanut butter", "raisin":
        let ingredientComment = "Those would taste great in cookies."
    
    //string interpolation has occur
    case let x where x.hasSuffix("chocolate"):
        let ingredientComment = "Is it dark \(x) or milk \(x)?"
    default:
        let ingredientComment = "You're on your own with that one."
    
}


// same result
var num = 100
var str01 = "The number is " + String(num)
var str02 = "this number is \(num)"

let helloString = "Hello World"

for i in 1...5 {
    print("\(i) - \(helloString)")

}


//var i = 1
//while 1 <= 5 {
//    print("\(i) - \(helloString)")
//    i += 1
//}

















