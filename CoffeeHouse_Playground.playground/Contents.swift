import UIKit


//** 손님 (Customer)  - property: 이름 - method: 주문하기( func order(menu: CoffeeMenu, to: Barista) )  ** 바리스타 (Barista)  - property: 이름 - method: 커피만들기( func makeCoffee(menu: CoffeeMenu) -> Coffee )  ** 커피 (Coffee)  - property: 이름, 가격
// 커피 주문 (Enumeration) ** 커피메뉴 (CoffeeMenu)  - case: americano, cappuccino, macchiato, espresso  with enum



enum CoffeeMenu {
    case americano
    case cappucino
    case Macchiato
    case espresso
}



class Coffee {
    var name: String
    var price: Int
    
    init(name: String, price: Int){
        self.name = name
        self.price = price
        
        
    }
}

class Barista {
    
    let name: String
    
    init(name: String) {
        self.name = name
    }
    func makeCoffee(menu: CoffeeMenu) -> Coffee {
        
        switch menu {
        case .americano:
            return Coffee(name: "Americano", price: 1500)
        case .cappucino:
            return Coffee(name: "Cappucino", price: 2000)
        case .Macchiato:
            return Coffee(name: "Macchiato", price: 2500)
        case .espresso:
            return Coffee(name: "Espresso", price: 2000)
        }
        
    }
}

class Customer {

    var name: String
    init(name: String){
        self.name = name
    }
    func order(barista: Barista,menu: CoffeeMenu) -> String {
        
        let coffee = barista.makeCoffee(menu: menu)
        return ("\(self.name) ordered 1 \(menu) from \(barista.name) costing ₩\(coffee.price)")
    }
        
}
    


let customer = Customer(name: "Isaac")

let barista = Barista(name: "Mark")

print(customer.order(barista: barista, menu: CoffeeMenu.americano))

barista.makeCoffee(menu: CoffeeMenu.americano)











