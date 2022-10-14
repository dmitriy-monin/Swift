//Lesson 6. Strings and Characters

import Foundation

/*
 1. Создать пять строковых констант
 Одни константы это только цифры, другие содержат еще и буквы
 Найти сумму всех этих констант приведя их к Int
 только вместо forced unwrapping и optional binding используйте оператор ??


 Когда посчитаете сумму, то представьте свое выражение в виде строки
 Например: 5 + nil + 2 + 3 + nil = 10

 но в первом случае используйте интерполяцию строк, а во втором конкатенацию
 */

let one = "10"
let two = "20"
let three = "30dhj"
let four = "40"
let five = "50fio"

let one1 = Int(one) ?? 0
let two1 = Int(two) ?? 0
let three1 = Int(three) ?? 0
let four1 = Int(four) ?? 0
var five1 = Int(five) ?? 0

let sum = one1 + two1 + three1 + four1 + five1

let one2 = Int(one) != nil ? String(one) : "nil"
let two2 = Int(two) != nil ? String(two) : "nil"
let three2 = Int(three) != nil ? String(three) : "nil"
let four2 = Int(four) != nil ? String(four) : "nil"
let five2 = Int(five) != nil ? String(five) : "nil"

print("\(one2) + \(two2) + \(three2) + \(four2) + \(five2) = \(sum)" )
print(one2 + " + " + two2  + " + " + three2  + " + " + four2  + " + " + five2  + " = " + String(sum))

/*
 2. Поиграйтесь с юникодом и создайте строку из 5 самых классных по вашему мнению символов,
 можно использовать составные символы. Посчитайте длину строки методом SWIFT и Obj-C
 */

let stringUnicode = "\u{1F436} \u{1F496} \u{1F425} \u{1F431} \u{1F428}"

print(stringUnicode)
print("Length Swift : \(stringUnicode.count). Length Objective-C: \((stringUnicode as NSString).length)")

/*
 3. Создайте строку английский алфавит, все буквы малые от a до z

 задайте константу - один из символов этого алфавита

 Используя цикл for определите под каким индексов в строке находится этот символ
 */

let alphabet = "abcdefghijklmnopqrstuvwxyz"
let value: Character = "l"
var index = 0

for i in alphabet {
    if i == value {
        print("Index of letter \"\(value)\" = \(index)")
        break
    }
    index += 1
}
if index == alphabet.count{
    print("Letter \"\(value)\" not found in alfabet.")
}
