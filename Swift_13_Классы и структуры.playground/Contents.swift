//Lesson 13. Classes and Structures

import Foundation

/*
 1. Создайте структуру студент. Добавьте свойства: имя, фамилия, год рождения, средний бал. Создайте несколько экземпляров этой структуры и заполните их данными. Положите их всех в массив (журнал).
 */

struct Student {
    var name: String
    var surname: String
    var year: Int
    var averageScore: Double
}

var student1 = Student(name: "Flex", surname: "Fox", year: 2002, averageScore: 4.33)
var student2 = Student(name: "Van", surname: "Greeds", year: 2001, averageScore: 4.12)
var student3 = Student(name: "Alex", surname: "Agens", year: 2003, averageScore: 4.99)
var student4 = Student(name: "Alex", surname: "Fox", year: 2004, averageScore: 4.04)

var journal = [student1, student2, student3, student4]

/*
 2. Напишите функцию, которая принимает массив студентов и выводит в консоль данные каждого. Перед выводом каждого студента добавляйте порядковый номер в “журнале”, начиная с 1.
 */

func PrintJournal(journal: [Student]) {
    var number = 1
    for stud in journal {
        print("\(number). \(stud.surname) \(stud.name), Born in \(stud.year), Average score - \(stud.averageScore)")
        number = number + 1
    }
}

PrintJournal(journal: journal)

/*
 3. С помощью функции sorted отсортируйте массив по среднему баллу, по убыванию и распечатайте “журнал”.
*/

print("\nSorter by Average score:")
journal = journal.sorted(by: { student1, student2 in
    if student1.averageScore > student2.averageScore {
        return true
    }
    return false
})

PrintJournal(journal: journal)

/*
 4. Отсортируйте теперь массив по фамилии (по возрастанию), причем если фамилии одинаковые, а вы сделайте так чтобы такое произошло, то сравниваются по имени. Распечатайте “журнал”.
*/

print("\nSorter by Surname:")
journal = journal.sorted(by: { student1, student2 in
    if student1.surname < student2.surname || student1.name < student2.name {
        return true
    }
    return false
})

PrintJournal(journal: journal)

/*
 5. Создайте переменную и присвойте ей ваш существующий массив. Измените в нем данные всех студентов. Изменится ли первый массив? Распечатайте оба массива.
*/

var journal2 = journal
journal2[0].name = "Max"
journal2[1].surname = "Ivanov"

print("\nJournal:")
PrintJournal(journal: journal)
print("\nJournal 2:")
PrintJournal(journal: journal2)

/*
 6. Теперь проделайте все тоже самое, но не для структуры Студент, а для класса. Какой результат в 5м задании? Что изменилось и почему?
*/

class ClassStudent {
    var name: String
    var surname: String
    var year: Int
    var averageScore: Double
    
    init(name: String, surname: String, year: Int, averageScore: Double) {
        self.name = name
        self.surname = surname
        self.year = year
        self.averageScore = averageScore
    }
}

var classStudent1 = ClassStudent(name: "Flex", surname: "Fox", year: 2002, averageScore: 4.33)
var classStudent2 = ClassStudent(name: "Van", surname: "Greeds", year: 2001, averageScore: 4.12)
var classStudent3 = ClassStudent(name: "Alex", surname: "Agens", year: 2003, averageScore: 4.99)
var classStudent4 = ClassStudent(name: "Alex", surname: "Fox", year: 2004, averageScore: 4.04)

var classJournal = [classStudent1, classStudent2, classStudent3, classStudent4]

print("\nClassStudent:")
func PrintClassJournal(journal: [ClassStudent]) {
    var number = 1
    for stud in journal {
        print("\(number). \(stud.surname) \(stud.name), Born in \(stud.year), Average score - \(stud.averageScore)")
        number = number + 1
    }
}

PrintClassJournal(journal: classJournal)

print("\nSorter by Average score in ClassStudent:")
classJournal = classJournal.sorted(by: { student1, student2 in
    if student1.averageScore > student2.averageScore {
        return true
    }
    return false
})

PrintClassJournal(journal: classJournal)

print("\nSorter by Surname in ClassStudent:")
classJournal = classJournal.sorted(by: { student1, student2 in
    if student1.surname < student2.surname || student1.name < student2.name {
        return true
    }
    return false
})

PrintClassJournal(journal: classJournal)

var classJournal2 = classJournal
classJournal2[0].name = "Max"
classJournal2[1].surname = "Ivanov"

print("\nJournal in ClassStudent:")
PrintClassJournal(journal: classJournal)
print("\nJournal 2 in ClassStudent:")
PrintClassJournal(journal: classJournal2)

/*
 007. Уровень супермен
 Выполните задание шахмат из урока по энумам используя структуры либо классы
 38:53
 */
