func calcMoney (inWallet wallet: [Int], withType type: Int? = nil) -> (total: Int, count: Int) {
    
    var total = 0
    var count = 0
    
    for value in wallet {
        
        if (type == nil) || (value == type!) {
            total += value
            count += 1
        }
    }
    return (total, count)
}


let wallet = [1, 5, 5, 1, 1, 1, 5, 10, 10, 100]

let (money, count) = calcMoney(inWallet: wallet, withType: 5)

(money, count)
count

calcMoney(inWallet: wallet, withType: 5)


func calculateMoney (inSequence range: Int...) -> Int {
    
    var sum = 0
    for value in range {
        sum += value
    }
    
    return sum
}

calculateMoney(inSequence: 1, 5, 5, 1, 1, 1, 5, 10, 10, 100)


func sayHi() {
    print("Hi")
}

sayHi()

let hi = sayHi

hi()

func sayPhrase(phrase: String) -> Int? {
    print(phrase)
    return nil
}

sayPhrase(phrase: "aaa")

let phrase = sayPhrase

phrase("BBB")

func doSomething(whatToDo: ()->()) {
    whatToDo()
}

doSomething(whatToDo: hi)

//Lesson 10. Функции

/*
 1. Создайте пару функций с короткими именами, которые возвращают строку с классным символом или символами. Например heart() возвращает сердце и т.п. Вызовите все эти функции внутри принта для вывода строки этих символов путем конкатенации.
 */

func heart() -> String {
    return "\u{1F496}"
}

func cat() -> String {
    return "\u{1F63A}"
}

func sun() -> String {
    return "\u{1F31E}"
}

print(heart() + " " + cat() + " " + sun())

/*
 2. Опять шахматные клетки. Реализовать функцию, которая принимает букву и символ и возвращает строку “белая” или “черная”. Строку потом распечатайте в консоль
 */

func chess(letter: String, number: Int) -> String {
    
    let color: String
    
    switch letter {
    case "a" where number % 2 != 0,
        "b" where number % 2 == 0,
        "c" where number % 2 != 0,
        "d" where number % 2 == 0,
        "e" where number % 2 != 0,
        "f" where number % 2 == 0,
        "g" where number % 2 != 0,
        "h" where number % 2 == 0: color = "Black"
    default:
        color = "White"
    }
    
    return color
    
}

func chess1(letter: String, number: Int) -> String {
    
    let color: String
    
    if ((letter == "a" || letter == "c" || letter == "e" || letter == "g") && number % 2 != 0) ||
        (letter == "b" || letter == "d" || letter == "f" || letter == "h") && number % 2 == 0 {
        color = "Black"
    } else {
    color = "White"}
    
    return color
}

print(chess(letter: "a", number: 1))
print(chess1(letter: "a", number: 1))

/*
 3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
 */

func reverseArray1(array: [Int]) -> [Int] {
    
    var reverse = [Int]()
    
    for i in array.reversed() {
        reverse.append(i)
    }
    
    return reverse
}

func reverseArray2(array: Int...) -> [Int] {
    
    var arrayMass = [Int]()
    
    for i in array {
        arrayMass.append(i)
    }
    
    var reverse = [Int]()
    
    for i in arrayMass.reversed() {
        reverse.append(i)
    }
    
    reverseArray1(array: reverse)
    return reverse
}

reverseArray2(array: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)
