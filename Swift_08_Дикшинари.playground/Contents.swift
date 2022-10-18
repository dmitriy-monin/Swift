//Lesson 8. Collection Types - Dictionary

/*
 1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

 После всех этих перетрубаций посчитайте общий бал группы и средний бал
*/

var jornal = ["Ivan Ivanov" : 5,
              "Petr Petrov" : 4,
              "Semen Semenov" : 3,
              "Alex Alexev" : 2,
              "Fedor Fedorov" : 5,
              "Dmitriy Dmitriev" : 5]

jornal.updateValue(3, forKey: "Alex Alexev")
jornal.updateValue(4, forKey: "Semen Semenov")

jornal["Valeriy Valeriev"] = 3
jornal["Mariya Marieva"] = 4

jornal.removeValue(forKey: "Valeriy Valeriev")
jornal.removeValue(forKey: "Alex Alexev")

var totalScope = 0

for i in jornal.values {
    totalScope += i
}

var averageScore = Double(totalScope) / Double(jornal.count)

print("Total Scope:", totalScope)
print("Averege Scope:", averageScore, "\n")

/*
 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
*/


let months = ["January" : 31,
              "February" : 28,
              "March" : 31,
              "April" : 30,
              "May" : 31,
              "June" : 30,
              "July" : 31,
              "August" : 31,
              "September" : 30,
              "October" : 31,
              "November" : 30,
              "December" : 31]

for (key, value) in months {
    print("KEY: \(key), VALUE: \(value)")
}
print("")
for key in months.keys {
    print("KEY: \(key), VALUE: \(months[key] ?? 0)")
}

/*
 3. Создать дикшинари , в которой ключ это адрес шахматной клетки (пример: a5, b3, g8), а значение это Bool. Если у клетки белый цвет, то значение true, а если черный - false. Выведите дикшинари в печать и убедитесь что все правильно.
*/

var chess = [String : Bool]()
let (letters, number) = (["a", "b", "c", "d", "e", "f", "g", "h"], 8)

for i in 0..<letters.count {
    for j in 1...number {
        if i % 2 == 0 && j % 2 != 0 || i % 2 != 0 && j % 2 == 0 {
            chess[letters[i] + String(j)] = false
        } else {
            chess[letters[i] + String(j)] = true
        }
    }
}
