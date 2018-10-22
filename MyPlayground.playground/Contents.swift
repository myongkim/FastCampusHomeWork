import UIKit

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



func changeArrayWithMap() {

    let newArray = array2.map({$0 * 2})
    print(newArray)
}
changeArrayWithMap()

func chagneArrayWithMap2() {
    
    let newArray = array2.map { (value) -> Int in
        value * 2
    }
    print(newArray)
}

chagneArrayWithMap2()

print("================================================================================")

func reduceSum() {
    var total = 0
    
    for number in array2 {
        
        total += number
        
    }
    print(total)
}
reduceSum()

func reduceSumWithReduce() {
    
    let newNum = array2.reduce(0) { (result, Int) -> Int in
        result + Int
    }
    print(newNum)
}

reduceSumWithReduce()
