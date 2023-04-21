/*
 В рамках прошлого домашнего задания был создан класс пиццерии с переменной, в которой хранится пицца, удалите её. Необходимо создать структуру картошки фри, в которой будет стоимость и размер картошки и сделать так, чтобы в классе пиццерии была одна переменная, в которую можно было бы класть и пиццу, и картошку фри.

 Добавьте в класс пиццерии функцию, которая будет добавлять новую позицию в меню.

 Создайте протокол, в котором будут содержаться функции открытия и закрытия.

 Написать расширение для класса пиццерии, в котором будет реализован протокол из пункта 3.

 Написать функцию, в которой происходит вычитание одного числа из другого. Функция должна работать и с Int, и с Double.Функция должна возвращать результат вычитания.
 */

class Pizzeria {
    var pizza: String?
    var fries: (price: Double, size: String)?
    var menu: [String] = ["Margherita", "Pepperoni", "Hawaiian"]
    
    func addNewItemToMenu(item: String) {
        menu.append(item)
    }
}

protocol OpenClose {
    func open()
    func close()
}

extension Pizzeria: OpenClose {
    func open() {
        print("Pizzeria is open!")
    }
    
    func close() {
        print("Pizzeria is closed!")
    }
}

func subtractNumbers<T: Numeric>(_ a: T, _ b: T) -> T {
    return a - b
}
