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
