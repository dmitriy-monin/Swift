//Lesson 15. Type properties.

import Foundation

/*
 1. Создать структуру “Описание файла” содержащую свойства:
 - путь к файлу
 - имя файла
 - максимальный размер файла на диске
 - путь к папке, содержащей этот файл
 - тип файла (скрытый или нет)
 - содержимое файла (можно просто симулировать контент)

 Главная задача - это использовать правильные свойства там, где нужно, чтобы не пришлось хранить одни и те же данные в разных местах и т.д. и т.п.
*/

enum FileType {
    case hidden, notHidden
}

struct File {
    static let maxSize = 10
    var fileName: String
    var filePath: String {
        return folderPath + fileName
    }
    var folderPath = "C:/Folder/"
    var fileType = FileType.notHidden
    var fileContents = "" {
        didSet {
            if fileContents.count > File.maxSize {
                fileContents = oldValue
                print("File must been <", File.maxSize)
            }
            fileSize = fileContents.count
        }
    }
    var fileSize = 0 {
        didSet {
            if fileSize != fileContents.count {
                print("The file size cannot be changed")
                fileSize = fileContents.count
            }
        }
    }
}

var file = File(fileName: "file.txt")
file.filePath
file.fileType = .hidden
file.fileContents = "Hello!!!"
file.fileSize = 10
file.fileContents = "Hgddgdggdsdsdsd"
file

/*
 2. Создайте энум, который будет представлять некую цветовую гамму. Этот энум должен быть типа Int и как raw значение должен иметь соответствующее 3 байтное представление цвета. Добавьте в этот энум 3 свойства типа: количество цветов в гамме, начальный цвет и конечный цвет.
*/

enum Color: Int {
    static var numberColor = 3
    static var firstColor = Color.red
    static var lastColor = Color.blue
    case red = 0xFF0000
    case green = 0x00FF00
    case blue = 0x0000FF
}

/*
 3. Создайте класс человек, который будет содержать имя, фамилию, возраст, рост и вес. Добавьте несколько свойств непосредственно этому классу чтобы контролировать:
 - минимальный и максимальный возраст каждого объекта
 - минимальную и максимальную длину имени и фамилии
 - минимально возможный рост и вес
 - самое интересное, создайте свойство, которое будет содержать количество созданных объектов этого класса
 */


class Human {
    static let minAge = 0
    static let maxAge = 100
    static let minLength = 1
    static let maxLength = 15
    static let minHeight = 30
    static let maxHeight = 250
    static let minWeight = 3
    static let maxWeight = 300
    static var count = 0
    
    var name: String {
        didSet {
            if name.count < Human.minLength || name.count > Human.maxLength {
                name = oldValue
            }
        }
    }
    var surname: String {
        didSet {
            if surname.count < Human.minLength || surname.count > Human.maxLength {
                surname = oldValue
            }
        }
    }
    var age: Int {
        didSet {
            if age < Human.minAge || age > Human.maxAge {
                age = oldValue
            }
        }
    }
    var height: Int {
        didSet {
            if height < Human.minHeight || height > Human.maxHeight {
                height = oldValue
            }
        }
    }
    var weight: Int {
        didSet {
            if weight < Human.minWeight || weight > Human.maxWeight {
                weight = oldValue
            }
        }
    }
    
    init(name: String, surname: String, age: Int, height: Int, weight: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.height = height
        self.weight = weight
        Human.count = Human.count + 1
    }
}

let human1 = Human(name: "Ivan", surname: "Ivanov", age: 20, height: 180, weight: 80)
let human2 = Human(name: "Max", surname: "Petrov", age: 21, height: 176, weight: 72)
let human3 = Human(name: "Jack", surname: "Piterson", age: 30, height: 171, weight: 91)

Human.count
