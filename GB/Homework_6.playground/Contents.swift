struct Employee {
    let name: String
    let salary: Double
    let position: String
}

class PizzaRestaurant {
    private var employees: [Employee] = []
    private var tables: [Table] = []
    
    init() {
        employees.append(Employee(name: "John", salary: 1200, position: "cashier"))
        employees.append(Employee(name: "Sarah", salary: 1500, position: "cook"))
        employees.append(Employee(name: "Bob", salary: 1300, position: "cook"))
        employees.append(Employee(name: "Kate", salary: 1100, position: "cashier"))
        employees.append(Employee(name: "Mike", salary: 1400, position: "cook"))
        
        tables.append(Table(capacity: 4, restaurant: self))
        tables.append(Table(capacity: 2, restaurant: self))
        tables.append(Table(capacity: 6, restaurant: self))
        tables.append(Table(capacity: 3, restaurant: self))
        tables.append(Table(capacity: 4, restaurant: self))
    }
}

class Table {
    private let capacity: Int
    private let restaurant: PizzaRestaurant
    
    init(capacity: Int, restaurant: PizzaRestaurant) {
        self.capacity = capacity
        self.restaurant = restaurant
    }
    
    func isAvailable(numGuests: Int) -> Bool {
        return capacity >= numGuests
    }
}
