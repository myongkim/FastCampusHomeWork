import UIKit

//struct Hello {
//    var name: String?
//    var price: Int?
//    var array: Array<String>?
//    var numberArray: Array<String>?
//
//    init(names: String? = nil, prices: Int? = nil, arrays: Array<String>? = nil, numberArrays: Array<String>? = nil) {
//        name.self = names
//        price.self = prices
//        array.self = arrays
//        numberArray.self = numberArrays
//    }
//
//
//
//}
//
//let hello = Hello.init()
//var newName = hello.name
//newName = "Isaac"
//
//print(newName ?? "")


//if let newName = String?.self {
//    print(newName)
//} else {
//    print("optional")
//}





//let newName =
//var newArray = newName.array
//newArray.append("new Name")
//newArray.append("hello name")
//
//print(newArray)
//
//
//newArray.append("123")
//newArray.append("cool")
//newArray.append("Voodoo")
//newArray.append("123")
//newArray.append("123")
//

func great(name yourName: String, owner ownerName: String) -> String {
    
    return yourName == ownerName ? "Hello boss" : "Hello guest"
    
}


great(name: "Isaac", owner: "Isaac")









