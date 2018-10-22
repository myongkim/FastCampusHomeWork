//: Playground - noun: a place where people can play

import UIKit


let array = [1,2,3,4,3,3,5]

// filter [3,3,3]
// firstway

func filterInFor() {
    var newArray = [Int]()
    
    for number in array {
        if number == 3 {
            newArray.append(number)
        }
    }
    print(newArray)
}
print("=========================================")
filterInFor()

func filterInForFilter() {
    
    let newValue = array.filter({$0 == 3 })
    print(newValue)
}
filterInForFilter()
print("=========================================")




func evenChange() {
    
    let even = array.filter ({ return $0 % 2 == 0 })
    print(even)
}

evenChange()


func evenChangeWithFunc() {
    var evenArray = [Int]()
    
    for number in array {
        if number % 2 == 0 {
            evenArray.append(number)
            
        }
    }
    print(evenArray)
    
}
evenChangeWithFunc()

print("=========================================")

let array2 = [1,2,3,4]

func changeArray() {
    var newArray = [Int]()
    
    for number in array2 {
        var newNumber = 0
        newNumber = number * 2
        newArray.append(newNumber)
    }
    print(newArray)
}

changeArray()



//func changeArrayWithMap() {
//    
//    let newArray = array2.map({$0 * 2})
//    print(newArray)
//}
//changeArrayWithMap()

func chagneArrayWithMap2() {
    
    let newArray = array2.map { (value) -> Int in
        value * 2
    }
}


print("=========================================")


