import Cocoa

var greeting = "Hello, playground"

var a = 5, b = 7
print(a + b * 2)
print("Hello world" + " \(a)")

func sam(aaa: String, bbb: String) {
    print(aaa + bbb)
}

sam(aaa: "AAA", bbb: " sss")

func summ(num1: Int, num2: Int = 1) -> Int {
    return num1 + num2
}

print(summ(num1: 24))


func multi (nums:Int...)->Int{
    var mult = 1
    for num in nums{
        mult *= num
    }
    return mult
}

print("Multi = \(multi(nums: 1,2,3,4,5))")


func twoReturns (num:Float)-> (two:Float, three:Float){
    let two = num+5
    let three = num*5
    return (two, three)
}
let mults = twoReturns(num: 5)
print("Results: \(mults.two), \(mults.three)")


var square: (Int) -> (Int) = {
    num in
    return num*5
}

print(square(7))


var numbers = [9,4,6,8,3,2]
let sorted = numbers.sorted(by: {
    x,y in x<y
})
print(sorted)

for i in sorted{
    print(i)
}

let squareNumbers = numbers.map {
    (num:Int)->String in
    "\(num*num)"
}
print("\(squareNumbers)")

let nums = numbers.filter{
    (num:Int)-> Bool in
    return num%2==0
}
print(nums)


enum Cars{
    case Audi
    case BMW
    case Volvo
    case Ford
}
var car = Cars.BMW

struct Square{
    var lenght: Int
    func sum (num: Int){
        print("\(num+num)")
    }
}

var block = Square (lenght: 10)
block.sum(num: 2)
