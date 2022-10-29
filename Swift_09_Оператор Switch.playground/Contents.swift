//Lesson 9. Оператор Switch

/*
 1. Создать строку произвольного текста, минимум 200 символов. Используя цикл и оператор свитч посчитать количество гласных, согласных, цифр и символов.
*/

let string = "I was born in Nizhny Novgorod. It is my hometown. I have been living here all my life. Let me tell you more about it.It is a very lively place, located in Central Russia? It was founded in 1221. Back then it used to be a major trading hub. People from all over the country came to Nizhny Novgorod to buy and sell goods! Now it has a population of one million and five hundred thousand citizens, it is the 6th biggest city in Russia.Nowadays it is a large city with a big city center and suburbs. A lot of companies have their headquarters in Nizhny Novgorod. It is one of the biggest economic centers in Russia."

var vowels = 0
var consonants = 0
var numbers = 0
var symbols = 0

for i in string {
    switch i {
        case "a", "e", "i", "o", "u", "y", "A", "E", "I", "O", "U", "Y" : vowels += 1
        case "b", "c", "d", "f", "g", "h", "j", "k", "l", "m", "n", "p", "q", "r", "s", "t", "v", "w", "x", "z", "B", "C", "D", "F", "G", "H", "J", "K", "L", "M", "N", "P", "Q", "R", "S", "T", "V", "W", "X", "Z" : consonants += 1
        case "1", "2", "3", "4", "5", "6", "7", "8", "9", "0" : numbers += 1
    default:
        symbols += 1
    }
}

/*
2. Создайте свитч который принимает возраст человека и выводит описание жизненного этапа
*/


let age = 100

switch age {
    case 0...13 : print("Childhood")
    case 14...18 : print("Teenager")
    case 19...60 : print("Adult")
    case 61...120 : print("Old")
default:
    print("Error! Check the age!")
}

/*
3. У вас есть имя отчество и фамилия студента (русские буквы). Имя начинается с А или О, то обращайтесь к студенту по имени, если же нет, то если у него отчество начинается на В или Д, то обращайтесь к нему по имени и отчеству, если же опять нет, то в случае если фамилия начинается с Е или З, то обращайтесь к нему только по фамилии. В противном случае обращайтесь к нему по полному имени.
*/

let (name, patronymic, surname) = ("Иван", "Петрович", "Вольнов")

for i in name {
    switch i {
        case "А", "О" : print("Здравствуйте, \(name)!")
    default:
        for i in patronymic {
            switch i {
                case "В", "Д" : print("Здравствуйте, \(name) \(patronymic)!")
            default:
                for i in surname {
                    switch i {
                        case "Е", "З" : print("Здравствуйте, \(surname)!")
                    default:
                        print("Здравствуйте, \(surname) \(name) \(patronymic)!")
                    }
                    break
                }
            }
            break
        }
    }
    break
}


/*
4. Представьте что вы играете в морской бои и у вас осталось некоторое количество кораблей на поле 10Х10 (можно буквы и цифры, а можно только цифры). Вы должны создать свитч, который примет тюпл с координатой и выдаст один из вариантов: мимо, ранил, убил.
 */
