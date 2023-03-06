//Lesson 14. Properties

import Foundation
/*
 1. Самостоятельно повторить проделанное в уроке
 
 2. Добавить студенту property «Дата рождения» (пусть это будет еще одна структура, содержащая день, месяц, год) и два computed property: первое — вычисляющее его возраст, второе — вычисляющее, сколько лет он учился (считать, что он учился в школе с 6 лет, если студенту меньше 6 лет — возвращать 0)
*/

struct Student {
    var name: String {
        didSet {
            name = name.capitalized
        }
    }
    var surname: String {
        didSet {
            surname = surname.capitalized
        }
    }
    var fullName: String {
        get {
            return name + " " + surname
        }
        set {
            let words = newValue.components(separatedBy: " ")
            
            if words.count > 0 {
                name = words[0]
            }
            
            if words.count > 1 {
                surname = words[1]
            }
        }
    }
    
    let birthDate: BirthDate
        
    var age: Int? {
        if let date = birthDate.date {
            let calendar = Calendar.current
            let currentComponent = calendar.dateComponents([.year], from: date, to: Date())
            return currentComponent.year
        }
        
        return nil;
    }
    
    var studyYear: Int {
        if age != nil && age! > 6 {
            return age! - 6;
        }
        return 0
    }
}

struct BirthDate {
        let day: Int
        let month: Int
        let year: Int
        var date: Date? {
            let calendar = Calendar.current
            return calendar.date(from: DateComponents(year: year, month: month, day:day))
        }
        
}

var student = Student(name: "Alex", surname: "Mavin", birthDate: BirthDate(day: 10, month: 06, year: 2021))

student.name
student.surname
student.fullName

student.name = "bOB"
student.surname = "IvAnOv"
student.fullName
student.fullName = "iVaV nArOkOv"
student.fullName
student.age

print("Name: \(student.name)\nSurname: \(student.surname)\nFull Name: \(student.fullName)\nAge: \(student.age!)\nStudy year: \(student.studyYear)\nBirth Date: \(student.birthDate.date!)")

 /*
 3. Создать структуру «Отрезок», содержащую две внутренние структуры «Точки». Структуру «Точка» создать самостоятельно, несмотря на уже имеющуюся в Swift’е. Таким образом, структура «Отрезок» содержит две структуры «Точки» — точки A и B (stored properties). Добавить два computed properties: « середина отрезка» и «длина» (считать математическими функциями)
  
  4. При изменении середины отрезка должно меняться положение точек A и B. При изменении длины, меняется положение точки B
  */

struct Point {
    var x: Double
    var y: Double
}

struct Segment {
    var a: Point
    var b: Point
    var midpoint: Point {
        set {
            let newMidpointX = newValue.x - midpoint.x
            let newMidpointY = newValue.y - midpoint.y
            a.x = a.x + newMidpointX
            a.y = a.y + newMidpointX
            b.x = b.x + newMidpointY
            b.y = b.y + newMidpointY
        }
        get {
            return Point(x: (a.x+b.x)/2, y: (a.y+b.y)/2)
        }
    }
    var length: Double {
        set {
            let newX = (a.x + newValue * (b.x - a.x) / length)
            let newY = (a.y + newValue * (b.y - a.y) / length)
            b = Point(x:  newX, y: newY)
        }
        get {
            return sqrt(pow((b.x-a.x), 2) + pow((b.y-a.y), 2))
        }
    }
}

var segment = Segment(a: Point(x: 10, y: 10), b: Point(x: 10, y: 33))

segment.midpoint
segment.length
segment.midpoint = Point(x: 3, y: 21.5)
segment.a
segment.midpoint
segment.length = 100
segment.length
segment.midpoint
segment.a
segment.b
