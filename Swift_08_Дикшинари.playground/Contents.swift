//Lesson 8. Collection Types - Dictionary

/*
 1. Создайте дикшинари как журнал студентов, где имя и фамилия студента это ключ, а оценка за контрольную значение. Некоторым студентам повысьте оценки - они пересдали. Потом добавьте парочку студентов, так как их только что перевели к вам в группу. А потом несколько удалите, так как они от вас ушли :(

 После всех этих перетрубаций посчитайте общий бал группы и средний бал
*/

var jornal = ["Ivan Ivanov" : 5,
            "Petr Petrov" : 4,
            "Semen Semenov" : 3,
            "Alex Alexev" : 2,
            "Fedor Fedorov" : 5,
            "Dmitriy Dmitriev" : 5]

jornal.updateValue(3, forKey: "Alex Alexev")
jornal.updateValue(4, forKey: "Semen Semenov")

jornal["Valeriy Valeriev"] = 3
jornal["Mariya Marieva"] = 4

jornal.removeValue(forKey: "Valeriy Valeriev")
jornal.removeValue(forKey: "Alex Alexev")

var totalScope = 0

for i in jornal.values {
    totalScope += i
}

var averageScore : Double = Double(totalScope) / Double(jornal.count)

print("Total Scope:", totalScope)
print("Averege Scope:", averageScore)

/*
 2. Создать дикшинари дни в месяцах, где месяц это ключ, а количество дней - значение.
 В цикле выведите ключ-значение попарно, причем один раз выведите через тюплы, а другой раз пройдитесь по массиву ключей и для каждого из них доставайте значения.
*/


