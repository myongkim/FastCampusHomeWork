import UIKit

var str = "Hello, playground"

//** 손님 (Customer)  - property: 이름 - method: 주문하기( func order(menu: CoffeeMenu, to: Barista) )  ** 바리스타 (Barista)  - property: 이름 - method: 커피만들기( func makeCoffee(menu: CoffeeMenu) -> Coffee )  ** 커피 (Coffee)  - property: 이름, 가격
// 커피 주문 (Enumeration) ** 커피메뉴 (CoffeeMenu)  - case: americano, cappuccino, macchiato, espresso  with enum


class Coffee {
    var name: String
    var price: Int
    
    init(name: String, price: Int){
        name = "Americano"
        price = 4
        
        
    }
    
}
class Customer {

    var name = "Isaac"
    
    func order(menu: CoffeeMenu,to: Barista) {
        let coffee = Coffee()
        let baristaName = barista.name
        
        

        
        if menu == .americano {
            print("\(name)님이 ₩\(.americano)원 짜리 Americano를 \(baristaName)에게 주문하셨습니다. ")
            
        } else if menu == .cappucino {
             print("\(name)님이 ₩\(coffee.cappucino)원 짜리 Cappucino를 \(baristaName)에게 주문하셨습니다. ")
        } else if menu == .Macchiato {
             print("\(name)님이 ₩\(coffee.Macchiato)원 짜리 Macchiato를 \(baristaName)에게 주문하셨습니다. ")
        } else if menu == .espresso {
             print("\(name)님이 ₩\(coffee.espresso)원 짜리 Espresso를 \(baristaName)에게 주문하셨습니다. ")
        }
        
    }
    
}

enum CoffeeMenu {
    case americano
    case cappucino
    case Macchiato
    case espresso
}



class Barista {
    
    var name = "Lovely"
    
    
    init() {
        name = "Lovely"
    }
    
    
    
    
    func makeCoffee(menu: CoffeeMenu) -> Coffee {
        
//        let menu = CoffeeMenu
        
        let initCoffee = Coffee()
        
        switch menu {
            case .americano:
               return initCoffee.name
            case .cappucino:
                return
            case .Macchiato:
                print("바리스타 \(name)이 아메리카노를 만들고 있습니다.")
            case .espresso:
                print("바리스타 \(name)이 아메리카노를 만들고 있습니다.")
            default:
                print("바리스타 \(name)이 만들수 없는 커피 입니다. 다른걸 주문해 주세요")
        }
        
        
        
    }
}


let customer = Customer()
customer.name = "Peter"
let barista = Barista()
barista.name = "Mark"


customer.order(menu: .americano, to: .)

let barista = Barista()
barista.name = "Hansome"
barista.makeCoffee(menu: .americano)





//let barista = Barista(name: "Lovely")


