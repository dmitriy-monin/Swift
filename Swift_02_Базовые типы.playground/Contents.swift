// The Basics 2 Home work

/*
 1 Выведите в консоль минимальные и максимальные значения базовых типов, не ленитесь :)
 */

print("Int8 max = \(Int8.max)\nInt8 min = \(Int8.min)\n")
print("UInt8 max = \(UInt8.max)\nUInt8 min = \(UInt8.min)\n")
print("Int16 max = \(Int16.max)\nInt16 min = \(Int16.min)\n")
print("UInt16 max = \(UInt16.max)\nUInt16 min = \(UInt16.min)\n")
print("Int32 max = \(Int32.max)\nInt32 min = \(Int32.min)\n")
print("UInt32 max = \(UInt32.max)\nUInt32 min = \(UInt32.min)\n")
print("Int64 max = \(Int64.max)\nInt64 min = \(Int64.min)\n")
print("UInt64 max = \(UInt64.max)\nUInt64 min = \(UInt64.min)\n")

/*
 2. Создайте 3 константы с типами Int, Float и Double
 Создайте другие 3 константы, тех же типов: Int, Float и Double,
 при чем каждая из них это сумма первых трех, но со своим типом
 */

let a = 1
let b:Float = 1.5
let c = 1.7

let a1 = Int(Double(a) + Double(b) + c)
let b1 = Float(a) + b + Float(c)
let c1 = Double(a) + Double(b) + c

/*
 3. Сравните Int результат суммы с Double и выведите отчет в консоль
 */

if Double(a1) == c1 {
    print("a1 = c1")
} else if Double(a1) > c1{
    print("a1 > c1")
} else {
    print("a1 < c1")
}
