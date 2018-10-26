import UIKit



func challenge1a(input: String) -> Bool {
    var usedLetters = [Character]()
    for letter in input {
        if usedLetters.contains(letter) {
            return false
        }
        usedLetters.append(letter)
    }
    return true
}


challenge1a(input: "abdcc")

func challenge(input: String) -> Bool {
    
    return Set(input).count == input.count
    
}

challenge(input: "bade")



func pallendrom(input: String) -> Bool {
    
    let lowerCaseString = input.lowercased()
    let reverseString = lowerCaseString.reversed()
    
    return lowerCaseString == String(reverseString)
}

pallendrom(input: "aba")





