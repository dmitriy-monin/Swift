/*
 Есть словарь с видами чая и их стоимостью. Есть очередь людей, которые хотят заказать чай (можно представить её в виде массива видов чая, которые хотят заказать). Необходимо последовательно выводить в консоль сколько заплатит покупатель (необходимо вывести его номер по порядку, чай, который он заказал и стоимость).
 */

let teaType: [String: Int] = ["black": 100, "green": 150, "fruit": 200]

var queue = ["green", "black", "green", "fruit", "black"]

for (index, element) in queue.enumerated() {
    print("\(index+1). \(element) \(teaType[element] ?? 0)")
}

/*
 Есть массив [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]. Необходимо создать новый массив, который будет состоять из элементов старого, но не должно быть nil, не должно быть 0 и 4, а также массив должен быть отсортирован по возрастанию.
 */

let oldArray = [-4, 5, 10, nil, 4, nil, 25, 0, nil, 16, 75, -20, -7, 15, 0, nil]

var newArray = oldArray.compactMap { $0 }
newArray.removeAll { $0 == 0 || $0 == 4 }
newArray.sort()

print(newArray)

/*
 Написать функцию, которая на вход принимает целое число, а возвращает массив, который сформирован по следующим правилам: количество элементов соответствует переданному числу, массив начинается с 1, каждый последующий элемент больше предыдущего в 2 раза.
 */

func createArray (In enter: Int) -> [Int] {
    var arr = [1]
    for i in 0...enter-2 {
        arr.append(arr[i]*2)
    }
    return arr
}

print(createArray(In: 10))
