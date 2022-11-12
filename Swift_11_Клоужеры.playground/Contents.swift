let numbers = [4, 3, 12, 7, 6, 3, 56, 7, 8, 9, 10]

func filterArray(array: [Int], f: (Int) -> Bool) -> [Int] {
    
    var filtered = [Int]()
    
    for i in array {
        if f(i) {
            filtered.append(i)
        }
    }
    return filtered
}

//func compare(i: Int) -> Bool {
//    return i % 2 == 0
//}

//filterArray(array: numbers, f: compare)

filterArray(array: numbers, f: {(i: Int) -> Bool in
        return i % 2 == 0
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
        return i % 2 == 1
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
        return i % 3 == 0
})

filterArray(array: numbers, f: {(i: Int) -> Bool in
        return i < 10
})

//------
// MARK: simple form
// FIXME: fix it!
// TODO: aaa

filterArray(array: numbers, f: {i in
    return i % 2 == 0
})

let a =
filterArray(array: numbers, f: {i in i % 2 == 1})

let a1 =
filterArray(array: numbers, f: {$0 % 3 == 0})

let a2 =
filterArray(array: numbers) {
    $0 % 3 == 0
}

let array = [1, 2, 3]
var count = 0
let a3 =
filterArray(array: numbers) {value in
    
    for include in array {
        count += 1
        if include == value {
            return true
        }
    }
    return false
}
count
count = 0
var dict = [Int:Bool]()
for value in array {
    count += 1
    dict[value] = true
}


let a4 =
filterArray(array: numbers) {value in
    count += 1
    return dict[value] != nil
}
count


// Lesson 11. Клоужеры

/*
 1. Написать функцию, которая ничего не возвращает и принимает только один клоужер, который ничего не принимает и ничего не возвращает . Функция должна просто посчитать от 1 до 10 в цикле и после этого вызвать клоужер. Добавьте println в каждый виток цикла и в клоужер и проследите за очередностью выполнения команд.
 */

func schetchik(f: () -> ()) {
    for i in 1...10 {
        print("One \(i)")
    }
    f()
}

schetchik {print("Two")}

/*
 2. Используя метод массивов sorted, отсортируйте массив интов по возрастанию и убыванию. Пример показан в методичке.
 */

var array1 = [1, 3, 8, 3, 6, 2, 9]

array1.sorted()
array1.sorted(by: >)

