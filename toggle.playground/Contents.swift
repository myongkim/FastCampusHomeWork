import UIKit

var isItOn = false

func toggle() {
    
    
    var button = "On"
    
    if isItOn == false {
        button = "On"
        isItOn = true
        print(button)
        
    } else if isItOn == true {
        
        button = "Off"
        isItOn = false
        print(button)
        
    }
}

toggle()
toggle()
toggle()
toggle()



