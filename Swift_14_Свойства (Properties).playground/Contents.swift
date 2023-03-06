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

struct Segment {
    var pointA: PointA
    var pointB: PointB
    var midpoint: String {
        set {
            let midpoint = newValue.components(separatedBy: ";")
            if midpoint[0] != String((pointA.x+pointB.x)/2) {
                pointA.x = pointA.x + (Double(midpoint[0])!-pointA.x)
            }
        }
        get {
            return "\((pointA.x+pointB.x)/2);\((pointA.y+pointB.y)/2)"
        }
    }
    var length: Double {
        set {
            length
            let newLength = newValue - length
            pointB.x = pointB.x + newLength
            pointB.y = pointB.y + newLength
            length
        }
        get {
            return sqrt(pow((pointB.x-pointA.x), 2) + pow((pointB.y-pointA.y), 2))
        }
    }
    
    struct PointA {
        var x: Double
        var y: Double
    }
    
    struct PointB {
        var x: Double
        var y: Double
    }
    
}

var segment = Segment(pointA: Segment.PointA(x: 10, y: 10), pointB: Segment.PointB(x: 10, y: 33))

segment.midpoint
segment.length
segment.midpoint = "12.0;22.5"
segment.pointA
segment.midpoint
segment.length = 99
segment.length
segment.midpoint
segment.pointA
segment.pointB
