//Lesson 7. Collection Types - Arrays

/*
 1. создать массив "дни в месяцах"
 12 элементов содержащих количество дней в соответствующем месяце

 используя цикл for и этот массив

 - выведите количество дней в каждом месяце (без имен месяцев)
 - используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней
 - сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)
 - сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)
 - для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года
*/

// Выведите количество дней в каждом месяце (без имен месяцев)

let day = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31]

for (index, quantity) in day.enumerated() {
    print("Month: \(index + 1), Days: \(quantity)")
}

print("")
var number = 0
for i in day {
    number += 1
    print("In \(number) mounth \(i) days")
}

// Используйте еще один массив с именами месяцев чтобы вывести название месяца + количество дней

print("")
let mounth = ["January", "Febriary", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]

for (index, quantity) in mounth.enumerated() {
    print("In \(quantity) \(day[index]) days")
}

// Сделайте тоже самое, но используя массив тюплов с параметрами (имя месяца, кол-во дней)

print("")
let jan = [("January", 31), ("Febriary", 28), ("March", 31), ("April", 30), ("May", 31), ("June", 30), ("July", 31), ("August", 31), ("September", 30), ("October", 31), ("November", 30), ("December", 31)]

for i in 0..<jan.count {
    print("In \(jan[i].0) \(jan[i].1) days")
}

// Сделайте тоже самое, только выводите дни в обратном порядке (порядок в массиве не меняется)

print("")
for i in (0..<jan.count).reversed() {
    print("In \(jan[i].0) \(jan[i].1) days")
}

// Для произвольно выбранной даты (месяц и день) посчитайте количество дней до этой даты от начала года

print("")
let (daysToBirth, mounthToBirth) = (7, 12)

var sumDay = 0
if 1 <= mounthToBirth && mounthToBirth <= 12 {
    for i in 0...jan.count-1 {
        if i == mounthToBirth-1 && daysToBirth <= jan[mounthToBirth-1].1 && daysToBirth > 0 {
            print("\(sumDay+daysToBirth) days before the specified date.")
            break
        } else if daysToBirth > jan[mounthToBirth-1].1 || daysToBirth <= 0 {
            print("ERROR! In \(jan[mounthToBirth-1].0) \(jan[mounthToBirth-1].1) days!")
            break
        }
        sumDay += jan[i].1
    }
} else {
    print("ERROR! There are 12 months in a year! You need to enter a number from 1 to 12.")
}
 
// v.2

let (month, dayq) = (12, 7)
month
dayq
let monthIndex = month - 1
var sumDays = dayq
for i in day[0..<monthIndex] {
    sumDays += i
}

print("Days have passed from the \(dayq) \(mounth[month - 1]): \(sumDays)\n")

/*
 2. Сделайте первое задание к уроку номер 4 используя массивы:

 (создайте массив опшинал интов и посчитайте сумму)

 - в одном случае используйте optional binding
 - в другом forced unwrapping
 - а в третьем оператор ??
 
 1. Создать пять строковых констант
 Одни константы это только цифры, другие содержат еще и буквы
 Найти сумму всех этих констант приведя их к Int
 (Используйте и optional binding и forced unwrapping)
*/

let mass: [Int?] = [10, 20, nil, 40, nil]

var sum = 0
for i in mass {
    if let i = i {
        sum += i
    }
}
print("Optional Binding: \(sum)")

sum = 0
for i in mass {
    if i != nil {
        sum += i!
    }
}
print("Forced Unwrapping: \(sum)")

sum = 0
for i in mass {
        sum += i ?? 0
}
print("?? : \(sum)\n")

/*
3. создайте строку алфавит и пустой массив строк

 в цикле пройдитесь по всем символам строки попорядку, преобразовывайте каждый в строку и добавляйте в массив, причем так, чтобы на выходе получился массив с алфавитом задом-наперед
 */

let alphabet = "abcdefghijklmnopqrstuvwxyz"
var reverseAlphabet = [String]()
var reverseAlphabet2 = [String]()

for i in alphabet.reversed() {
    reverseAlphabet.append(String(i))
}
print(reverseAlphabet)

// v.2
for i in alphabet {
    reverseAlphabet2.insert(String(i), at: 0)
}
print(reverseAlphabet2)

