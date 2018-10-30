import UIKit

var str = "Hello, playground"


var dictionary : [String : String] = [:]

var dictionary1 : [String : [String:Int]] = [:]


dictionary["Hello"] = "World"
print(dictionary)
dictionary["two"] = "YangWoo"
dictionary["Three"] = "Isaac"

print(dictionary)
print(dictionary)

dictionary["four"] = "Chul"


print(dictionary["Hello"])
print(dictionary["new"])


dictionary["Hello"]

dictionary1["One"] = ["Hello" : 1, "World" : 2 , "three": 3]

print(dictionary1)


print(dictionary["Hello"])
print(dictionary1["One"]!["Hello"])
print(dictionary1["One"])

//
//dictionary1["Boy"] = ["one" : 2]
//
//print(dictionary1)
//
dictionary1["Two"] = ["Hello" : 1, "World" : 2 , "three": 3]

print(dictionary1)

print(dictionary1.keys)
print(dictionary1.keys.count)
print(dictionary1.values)

