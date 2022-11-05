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
print(chess1(letter: "a", number: 2))

/*
 3. Создайте функцию, которая принимает массив, а возвращает массив в обратном порядке. Можете создать еще одну, которая принимает последовательность и возвращает массив в обратном порядке. Чтобы не дублировать код, сделайте так, чтобы функция с последовательностью вызывала первую.
 */

func reverseArray1(array: [Int]) -> [Int] {
    return array.reversed()
}

func reverseArray2(array: Int...) -> [Int] {
    return reverseArray1(array: array)
}

reverseArray1(array: [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
reverseArray2(array: 1, 2, 3, 4, 5, 6, 7, 8, 9, 10)

/*
 4. Разберитесь с inout самостоятельно и выполните задание номер 3 так, чтобы функция не возвращала перевернутый массив, но меняла элементы в существующем. Что будет если убрать inout?
 */

func reverseArray3(array: inout [Int]) -> [Int] {
    
    var num = array.endIndex + 1
    for i in 0..<array.endIndex {
        array.remove(at: i)
        array.insert(num, at: i)
        num += 1
    }
    return array
}

var array = [1, 2, 3, 4, 5, 6]
reverseArray3(array: &array)

/*
 5. Создайте функцию, которая принимает строку, убирает из нее все знаки препинания, делает все гласные большими буквами, согласные маленькими, а цифры меняет на соответствующие слова (9 -> nine и тд)
 */

var text = "I was born in Nizhny Novgorod. It is my hometown. I have been living here all my life. Let me tell you more about it.It is a very lively place, located in Central Russia? It was founded in 1221. Back then it used to be a major trading hub. People from all over the country came to Nizhny Novgorod to buy and sell goods! Now it has a population of one million and five hundred thousand citizens, it is the 6th biggest city in Russia.Nowadays it is a large city with a big city center and suburbs. A lot of companies have their headquarters in Nizhny Novgorod. It is one of the biggest economic centers in Russia."

func restring(text: String) -> String {
    
    var finalText = ""
    var lowerText = text.lowercased()
    
    for i in lowerText {
        switch i {
        case "a", "e", "i", "o", "u", "y": finalText += String(i).uppercased()
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m",
            "n", "p", "q", "r", "s", "t", "v", "w", "x", "z": finalText += String(i)
        case "0" : finalText += "zErO"
        case "1" : finalText += "OnE"
        case "2" : finalText += "TwO"
        case "3" : finalText += "thrEE"
        case "4" : finalText += "fOUr"
        case "5" : finalText += "fIvE"
        case "6" : finalText += "sIx"
        case "7" : finalText += "sEvEn"
        case "8" : finalText += "EIght"
        case "9" : finalText += "nInE"
        default:
            finalText += " "
        }
    }
    return(finalText)
}

print(restring(text: text))
