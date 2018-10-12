import UIKit

//** 손님 (Customer)  - property: 이름 - method: 주문하기( func order(menu: CoffeeMenu, to: Barista) )  ** 바리스타 (Barista)  - property: 이름 - method: 커피만들기( func makeCoffee(menu: CoffeeMenu) -> Coffee )  ** 커피 (Coffee)  - property: 이름, 가격
// 커피 주문 (Enumeration) ** 커피메뉴 (CoffeeMenu)  - case: americano, cappuccino, macchiato, espresso  with enum

enum CoffeeMenu {
    case americano
    case cappuccino
    case macchiato
    case espresso
}

class Coffee {
    
    var name: String
    var price: Int
    
    init(name: String, price: Int) {
        self.name = name
        self.price = price
    }
}

class Barista {
    
    var name: String
    
    init(name: String) {
        self.name = name
        
    }
    
    func makeCofee(menu: CoffeeMenu) -> Coffee {
    // making this to allow initialize the coffee. Since we do not know all the coffee price, we want to give each one the price with the appropriate way.
        switch menu {
        case .americano: return Coffee(name: "Americano", price: 1500)
        case .cappuccino: return Coffee(name: "Cappuccino", price: 2000)
        case .macchiato: return Coffee(name: "Macchiato", price: 2500)
        case .espresso: return Coffee(name: "Espresso", price: 1500)
        }
    }
}

class Customer {
    var name: String
    
    init(name: String) {
        self.name = name
        
    }
    
    func order(menu: CoffeeMenu, to: Barista) -> String {
        
        let coffee = to.makeCofee(menu: menu)
        
        return "\(self.name) has ordered 1 \(coffee.name) from \(to.name). It is ₩\(coffee.price)"
        
        
    }
    
}
let customer = Customer(name: "Isaac")
let barista = Barista(name: "Hansome")

customer.order(menu: .americano, to: barista)



