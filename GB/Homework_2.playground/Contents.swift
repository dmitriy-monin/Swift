/*
 1. Написать функцию, которая на вход принимает число: сумма, которую пользователь хочет положить на вклад, следующий аргумент — это годовой процент, третий аргумент — это срок функция возвращает сколько денег получит пользователь по итогу.
*/
import Darwin

func calculateFinalDepositAmount(Deposit depositAmount: Double, Percent annualInterestRate: Double, TermInDays depositTerm: Double) -> Double {
    return depositAmount * pow(1 + annualInterestRate / 12 / 100, depositTerm * 12 / 365)
}

calculateFinalDepositAmount(Deposit: 100000, Percent: 15, TermInDays: 365)


/*
2. Создать перечисление, которое содержит 3 вида пиццы, и создать переменные с каждым видом пиццы.
*/

enum PizzaTypes {
    case margherita
    case pepperoni
    case veggie
}

var margheritaPizza = PizzaTypes.margherita
var pepperoniPizza = PizzaTypes.pepperoni
var veggiePizza = PizzaTypes.veggie


/*
3. Добавить возможность получения названия пиццы через rawValue.
*/

enum PizzaTypes1: String {
    case margherita = "Margherita"
    case pepperoni = "Pepperoni"
    case veggie = "Veggie"
}

var margheritaPizza1 = PizzaTypes1.margherita
var pepperoniPizza1 = PizzaTypes1.pepperoni
var veggiePizza1 = PizzaTypes1.veggie

margheritaPizza1.rawValue

