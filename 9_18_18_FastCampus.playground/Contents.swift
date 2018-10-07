import UIKit


class StoredProperty {
    var width = 0.0
    var height = 0.0
}

let stored = StoredProperty()
stored.width = 123
stored.height = 456
stored.width
stored.height

/*
 1. ToolBox 라는 클래스를 만들어서 다음과 같이 수치를 변환해주는 기능 구현.
 다음 4가지 방법 중 (Method, Stored Property, Computed Property, Property Observer)
 한 문제당 하나씩 서로 다른 방법을 골라 적용해 볼 것
 - inch to cm   /   cm to inch  (1 인치 = 2.54 cm)
 - 제곱미터 to 평  /  평 to 제곱미터  (1 평 = 3.3 m^2)
 - 화씨 to 섭씨  /  섭씨 to 화씨   (화씨 = 섭씨 * 1.8 + 32도)
 - 데이터량 (KB to MB   /  MB to GB)  (1024 KB = 1 MB,   1024 MB = 1 GB)
 */
 

class ToolFox {
    
    var centiMeter = 0.0
    var inch = 0.0
    var meterSquare = 0.0
    var pyeong = 0.0
    var ferenheight = 0.0
    var clesius = 0.0
    var KB = 0.0
    var MB = 0.0
    
    
}


let store = ToolFox.init()
store.centiMeter = 2.54
print(store.centiMeter)



class ToolBox1 {
    
    var centiMeter = 0.0
    var inch = 0.0
    var meterSquare = 0.0
    var pyeong = 0.0
    var ferenheight = 0.0
    var clesius = 0.0
    var KB = 0.0
    var MB = 0.0
    
    func ceniMeterConversion(centiMeter: Double) {
        
        self.centiMeter = centiMeter
        inch = centiMeter / 2.54
        
        print(inch)
    }
    func inchConversion(inch: Double) {
        
        self.inch = inch
        centiMeter = inch * 2.54
        
        print("\(centiMeter)cm")
        
    }
    
}

let methodFunc = ToolBox1()
methodFunc.ceniMeterConversion(centiMeter:30)
methodFunc.inchConversion(inch: 5)




let someCharacter: Character = "z"
let vowel = ["a","e","i","o","u"]

if someCharacter == "a" || someCharacter == "e" {
    print("\(someCharacter)")
    
} else if someCharacter == "b" || someCharacter == "c" {
    print("\(someCharacter)")
    
} else {
    print("not a character")
    
}

switch someCharacter {
case "a", "e", "i", "o", "u":
    print("\(someCharacter)")
case "b", "c":
    print("\(someCharacter)")
    
default:
    print("not a character")
    
}

let number = 123
func whatTheSwitch(_ value: Int) {
    
    if value > 5 {
        print(number)
        
    } else if value < 5 {
        print("this is less than five")
        
    } else {
        print("I don't know what to print")
    }
    
    

//    
//    switch value {
//    case where value > 5:
//        print(number)
//    case where value < 5:
//        print("this is less than five")
//    default:
//        print("I don't know what to print")
        
}
    
    
    
    
    


















