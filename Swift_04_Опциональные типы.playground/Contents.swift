//Lesson 4. Optional

/*
 1. Создать пять строковых констант
 Одни константы это только цифры, другие содержат еще и буквы
 Найти сумму всех этих констант приведя их к Int
 (Используйте и optional binding и forced unwrapping)
 */



let one = "10"
let two = "20"
let three = "30dhj"
let four = "40"
let five = "50fio"

var sum = 0

if Int(one) != nil {
    sum += Int(one)!
}
if Int(two) != nil {
    sum += Int(two)!
}
if Int(three) != nil {
    sum += Int(three)!
}
if let four1 = Int(four) {
    sum += four1
}
if let five1 = Int(five) {
    sum += five1
}
print("Sum = \(sum)")

/*
 2. С сервера к нам приходит тюпл с тремя параметрами:
 statusCode, message, errorMessage (число, строка и строка) в этом тюпле statusCode всегда содержит данные, но сама строка приходит только в одном поле
 если statusCode от 200 до 300 исключительно, то выводите message, в противном случает выводите errorMessage
 После этого проделайте тоже самое только без участия statusCode.
 */

let inputServer = (statusCode: 200, message: String?("OK"), errorMessage: String?("None"))

if inputServer.statusCode >= 200 && inputServer.statusCode < 300 {
    print(inputServer.message!)
} else {
    print(inputServer.errorMessage!)
}

let inputServer1 = (message: String?(nil), errorMessage: String?("None"))

if inputServer1.message != nil{
    print(inputServer1.message!)
}
if inputServer1.errorMessage != nil{
    print(inputServer1.errorMessage!)
}

/*
 3. Создайте 5 тюплов с тремя параметрами: имя, номер машины, оценка за контрольную
 При создании этих тюплов не должно быть никаких данных
 После создания каждому студенту установите имя, некоторым установите номер машины, некоторым установите результат контрольной, выведите в консоль:
 - имена студента
 - есть ли у него машина
 - если да, то какой номер
 - был ли на контрольной
 - если да, то какая оценка
 */

let oneStud: (name: String?, autoNumber: String?, assessment: Int?)
let twoStud: (name: String?, autoNumber: String?, assessment: Int?)
let threeStud: (name: String?, autoNumber: String?, assessment: Int?)
let fourStud: (name: String?, autoNumber: String?, assessment: Int?)
let fiveStud: (name: String?, autoNumber: String?, assessment: Int?)

oneStud = ("Ivan", nil, 5)
twoStud = ("Alex", "A666OP", 4)
threeStud = ("Mike", "T987BB", nil)
fourStud = ("John", nil, nil)
fiveStud = ("Dmitriy", "A008KY", 5)

var autoNumber: String
var assessment: String

if oneStud.autoNumber == nil {
    autoNumber = "Not auto"
} else {
    autoNumber = oneStud.autoNumber!
}
if oneStud.assessment == nil {
    assessment = "Answer in controlwork"
} else {
    assessment = String(oneStud.assessment!)
}
print("Name: \(oneStud.name!), Auto: \(autoNumber), ControlWork: \(assessment)")

if twoStud.autoNumber == nil {
    autoNumber = "Not auto"
} else {
    autoNumber = twoStud.autoNumber!
}
if twoStud.assessment == nil {
    assessment = "Answer in controlwork"
} else {
    assessment = String(twoStud.assessment!)
}
print("Name: \(twoStud.name!), Auto: \(autoNumber), ControlWork: \(assessment)")

if threeStud.autoNumber == nil {
    autoNumber = "Not auto"
} else {
    autoNumber = threeStud.autoNumber!
}
if threeStud.assessment == nil {
    assessment = "Answer in controlwork"
} else {
    assessment = String(threeStud.assessment!)
}
print("Name: \(threeStud.name!), Auto: \(autoNumber), ControlWork: \(assessment)")

if fourStud.autoNumber == nil {
    autoNumber = "Not auto"
} else {
    autoNumber = fourStud.autoNumber!
}
if fourStud.assessment == nil {
    assessment = "Answer in controlwork"
} else {
    assessment = String(fourStud.assessment!)
}
print("Name: \(fourStud.name!), Auto: \(autoNumber), ControlWork: \(assessment)")

if fiveStud.autoNumber == nil {
    autoNumber = "Not auto"
} else {
    autoNumber = fiveStud.autoNumber!
}
if fiveStud.assessment == nil {
    assessment = "Answer in controlwork"
} else {
    assessment = String(fiveStud.assessment!)
}
print("Name: \(fiveStud.name!), Auto: \(autoNumber), ControlWork: \(assessment)")

