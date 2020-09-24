import UIKit


//Task one

let someValueOne = -10
let someValueTwo = 10 - 10 + 10 * 5
let someValueThree = !(someValueOne == -10) ? 10 : 0


//Task two

var userName = "Alex"
var userAge = 18

if userName == "Alex" && userAge >= 18 {
    
    print("Пользователю больше 18")
    
} else if userName == "Alex" && userAge < 18 {
    
    print("Пользователю меньше 18")
    
}


//Task three

var someAge = 17

switch someAge {

case ..<18:
    print("Доступ запрещен")
case 18...65:
    print("Доступ разрешен")
case 65...:
    print("Этот сервис только для людей до 65")
default: break
}

if someAge < 18 {
    print("Доступ запрещен")
} else if someAge >= 18 && someAge <= 65 {
    print("Доступ разрешен")
} else {
    print("Этот сервис только для людей до 65")
}


//Task four

var someArray = [1, 2, 3, 4, 5]
var totalSumm = 0

for value in someArray {
    print(value)
    totalSumm += value
}

print("Сумма на балансе: \(totalSumm)")


// task five



someArray.isEmpty ? print("Массив пустой") : print("В массиве \(someArray.count) элементов")


//Task six

let idUsers = [1, 2, 3, 3, 3, 4, 5, 5, 5, 6, 6,
               7, 8, 9, 10, 11, 12, 13, 13, 14,
               15, 15, 15]

var unicUsers: Set<Int> = Set(idUsers)



print(unicUsers.sorted())


//Task seven

let dayInMonth = ["January" : 31, "February" : 28, "March" : 31, "April" : 30,
                  "May" : 31, "June": 30, "Julay" : 31, "August" : 31, "September" : 30,
                  "October" : 31, "November" : 30, "December" : 31]

for (month, days) in dayInMonth {
    print("\(month) have \(days) days")
}


//Task eight

var usersId = [1 : "Alex", 2 : "Ivan", 3 : "Petr"]

usersId[1] = nil
usersId[2] = nil

usersId[1] = "Fedor"
usersId[4] = "Artem"

for (id, user) in usersId {
    print("ID: \(id) user: \(user)")
}
