import UIKit


// collection type array, set, dictionary

var array = [5,1,92,3]
print(array[3])
array.append(10)

if array.isEmpty {
    print("Array is empty.")
    
} else {
    print("Array contains \(array.count) elements.")
}

!array.isEmpty

// set is the unorder list of the array

var setVariable = Set<Int>()
var anotherSet: Set = [1,2,3]

// it does not add 1, because anotherSet already has a 1 value. Where as array will append this value and will not check whether this will have any impact on it or not.
anotherSet.insert(1)
print(anotherSet)

if anotherSet.isEmpty {
    print("Set is empty.")
    
} else {
    print("Set contains \(anotherSet.count) elements.")
}

for element in anotherSet {
    print(element)
}


// distionary first is the key and the second is the value

var countries: [String: String] = ["US": "United States", "DE": "Germany"]
// this is how you access the dictionary
print(countries["US"])

countries["IT"] = "Italy"
print(countries)

var name = [1: "Jane", 2: "Doe"]
print(name[1] as Any)


// accessing through tuple in this case first is value and second is key
for (countryCode, countryName) in countries {
    print("\(countryCode) is \(countryName)")
    
}

/*
Question
In Playground, write a program that prints the numbers 1 to 100.
For multiples of three, print "Fizz" instead of the number
For the multiples of five, print "Buzz"
For numbers that are multiples of both three and five, print "FizzBuzz"
*/


func printNumber() {
    
    for i in 1...100{
        if i % 3 == 0 && i % 5 == 0 {
            print("FizzBuzz")
        } else if i % 5 == 0 {
            print("Buzz")
        } else if i % 3 == 0 {
            print("Fizz")
        }
    }
    
    
}

printNumber()



