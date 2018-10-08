import UIKit

var str = "Hello, playground"

//** 손님 (Customer)  - property: 이름 - method: 주문하기( func order(menu: CoffeeMenu, to: Barista) )  ** 바리스타 (Barista)  - property: 이름 - method: 커피만들기( func makeCoffee(menu: CoffeeMenu) -> Coffee )  ** 커피 (Coffee)  - property: 이름, 가격
// 커피 주문 (Enumeration) ** 커피메뉴 (CoffeeMenu)  - case: americano, cappuccino, macchiato, espresso  with enum


class Customer {

    var name = "Isaac"
    
    func order(menu: String,to: String) {
        let coffee = Coffee()
        let barista = Barista()
        barista.name = to
        
//        let americano = CoffeeMenu.americano
//        let cappucino = CoffeeMenu.cappucino
//        let macchiato = CoffeeMenu.Macchiato
//        let espresso = CoffeeMenu.espresso
        if menu == "americano" {
            print("\(name)님이 ₩\(coffee.americano)원 짜리 Americano를 \(barista.name)에게 주문하셨습니다. ")
            
        } else if menu == "cappucino" {
             print("\(name)님이 ₩\(coffee.cappucino)원 짜리 Cappucino를 \(barista.name)에게 주문하셨습니다. ")
        } else if menu == "Macchiato" {
             print("\(name)님이 ₩\(coffee.Macchiato)원 짜리 Macchiato를 \(barista.name)에게 주문하셨습니다. ")
        } else if menu == "espresso" {
             print("\(name)님이 ₩\(coffee.espresso)원 짜리 Espresso를 \(barista.name)에게 주문하셨습니다. ")
        }
        
    }
    
}

enum CoffeeMenu {
    case americano
    case cappucino
    case Macchiato
    case espresso
}

class Coffee {
    
    let americano = 1500
    let cappucino = 2000
    let Macchiato = 2500
    let espresso = 2500
    
}

class Barista {
    
    var name = "Lovely"
    
    
 
    
    func makeCoffee(menu: String) {
        
//        let menu = CoffeeMenu
        
        
        switch menu {
            case "americano":
                print("바리스타 \(name)이 아메리카노를 만들고 있습니다.")
            case "cappucino":
                print("바리스타 \(name)이 아메리카노를 만들고 있습니다.")
            case "Macchiato":
                print("바리스타 \(name)이 아메리카노를 만들고 있습니다.")
            case "espresso":
                print("바리스타 \(name)이 아메리카노를 만들고 있습니다.")
            default:
                print("바리스타 \(name)이 만들수 없는 커피 입니다. 다른걸 주문해 주세요")
        }
        
        
    }
}


let customer = Customer()
customer.name = "Peter"
customer.order(menu:"americano" , to: "Wendy")

let barista = Barista()
barista.name = "Hansome"
barista.makeCoffee(menu: "americano")




//let barista = Barista(name: "Lovely")


