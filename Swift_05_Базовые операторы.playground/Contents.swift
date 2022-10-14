//Lesson 5. Basic Operator

/*
 1. Посчитать количество секунд от начала года до вашего дня рождения. Игнорируйте високосный год и переходы на летнее и зимнее время. Но если хотите - не игнорируйте :)
*/


let secondToMyDay = (31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + 7) * 24 * 60 * 60
print("Since 1 January to 7 December - \(secondToMyDay) seconds.")

/*
 2. Посчитайте в каком квартале вы родились
 */

let myDay = 31 + 28 + 31 + 30 + 31 + 30 + 31 + 31 + 30 + 31 + 30 + 7

if myDay > 0 && myDay <= 90 {
    print("You were born in the first quarter.")
} else if myDay > 90 && myDay <= 181 {
    print("You were born in the second quarter.")
} else if myDay > 181 && myDay <= 273 {
    print("You were born in the third quarter.")
} else if myDay > 273 && myDay <= 365 {
    print("You were born in the fourth quarter.")
}

//v2
let monthBirthday = 12
var numberKvartal = monthBirthday / 3
numberKvartal += monthBirthday % 3 > 0 ? 1 : 0
print("Number quarter 07.12: \(numberKvartal)")

/*
3. Создайте пять переменных типа Инт и добавьте их в выражения со сложением, вычитанием, умножением и делением. В этих выражениях каждая из переменных должна иметь при себе унарный постфиксный или префиксный оператор. Переменные могут повторяться.

Убедитесь что ваши вычисления в голове или на бумаге совпадают с ответом. Обратите внимание на приоритет операций
*/

print("No infix and postfix operators ++ -- in new  Swift version")

/*
4. Шахматная доска 8х8. Каждое значение в диапазоне 1…8. При заданных двух значениях по вертикали и горизонтали определите цвет поля. Если хотите усложнить задачу, то вместо цифр на горизонтальной оси используйте буквы a,b,c,d,e,f,g,h
*/

let horisontal = "a"
let vertical = 5

if (horisontal == "a" || horisontal == "c" || horisontal == "e" || horisontal == "g")
    && vertical % 2 != 0 ||
    (horisontal == "b" || horisontal == "d" || horisontal == "f" || horisontal == "h")
    && vertical % 2 == 0 {
    print("BLACK")
} else {
    print("WHITE")
}

//v2

let cell = (x:3, y:4)
if cell.x % 2 == cell.y % 2 {
    print("BLACK")
} else {
    print("WHITE")
}

