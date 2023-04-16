/*
 Создать перечисление с видами пиццы (хотя бы 4-5 кейсов).
 */

enum PizzaType {
    case margherita
    case pepperoni
    case veggie
    case hawaiian
    case meatLovers
}

/*
 Создать структуру пиццы, она должна содержать стоимость, вид пиццы, толстое или тонкое тесто и добавки (например, дополнительно добавить пепперони, помидоры, сыр). Вид пиццы должен быть вложенным типом для структуры пиццы. Подсказка: добавки лучше также сделать перечислением.
 */

struct Pizza {
    let price: Double
    let pizzaType: PizzaType
    let crustType: String
    let toppings: [Toppings]
    
    enum Toppings {
        case pepperoni
        case mushrooms
        case onions
        case sausage
        case bacon
        case pineapple
    }
}

/*
 Создать класс пиццерии, добавить массив с возможными видами пиццы. Переменная с массивом должна быть приватной. Массив задаётся в инициализаторе.
 Написать в классе пиццерии функции для добавления нового вида пиццы и для получения всех доступных пицц.
 */

class PizzaPlace {
    private var availablePizzas: [Pizza]
    
    init() {
        self.availablePizzas = [
            Pizza(price: 10.0, pizzaType: .margherita, crustType: "thin", toppings: [.mushrooms, .onions]),
            Pizza(price: 12.5, pizzaType: .pepperoni, crustType: "thick", toppings: [.pepperoni, .onions, .sausage]),
            Pizza(price: 15.0, pizzaType: .veggie, crustType: "thin", toppings: [.mushrooms, .onions, .bacon]),
            Pizza(price: 18.5, pizzaType: .hawaiian, crustType: "thick", toppings: [.pineapple, .onions, .bacon]),
            Pizza(price: 20.0, pizzaType: .meatLovers, crustType: "thin", toppings: [.pepperoni, .sausage, .bacon])
        ]
    }
    
    func addPizza(pizza: Pizza) {
        availablePizzas.append(pizza)
    }
    
    func getAllPizzas() -> [Pizza] {
        return availablePizzas
    }
}

/*
 Создать экземпляр класса пиццерии и добавить в него несколько видов пицц.
 */

let myPizzaPlace = PizzaPlace()
myPizzaPlace.addPizza(pizza: Pizza(price: 13.0, pizzaType: .meatLovers, crustType: "thick", toppings: [.onions, .pepperoni]))
myPizzaPlace.addPizza(pizza: Pizza(price: 11.0, pizzaType: .margherita, crustType: "thin", toppings: [.mushrooms]))

let allPizzas = myPizzaPlace.getAllPizzas()
for pizza in allPizzas {
    print("Pizza Type: \(pizza.pizzaType), Crust Type: \(pizza.crustType), Price: \(pizza.price), Toppings: \(pizza.toppings)")
}
