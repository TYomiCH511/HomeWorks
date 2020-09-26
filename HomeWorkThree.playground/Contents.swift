import UIKit

//Home work one
//Task one

var tableAge: String
let age = 20

func convertAgeToString(age: Int) -> String {
    return String(age)
}

tableAge = convertAgeToString(age: age)
print(tableAge)
 
//Part two

let userBills = [1000, 2000]

func showUserBill(billOne: Int, billTwo: Int) -> String {
   return "On your bill one: \(billOne) and bill two: \(billTwo)"
}

let showBill = showUserBill(billOne: userBills[0], billTwo: userBills[1])
print(showBill)

//Task two

let userList = [16,19,19,21,22,23,24,24,25,26,34,35,36,40,41]

func sortedUser(users: [Int]) -> [Int] {
   return users.sorted(by: >)
   
}

let sortedUserList = sortedUser(users: userList)
// Знаю что такой вывод плохой, использую для экономии места
print(sortedUserList)


//Task three

var userListTwo = [16,19,19,21,22,23,24,24,25,26,34,35,36,40,41]

func sortedUserTwo(users: inout [Int]){
   users = users.sorted(by: >)
}

sortedUserTwo(users: &userListTwo)
print(userListTwo)


//Task Four


var usersNames = ["Alex", "Jack", "Nick", "Bob", "Kevin"]

func sortedUserNamesAToZ(users: inout [String]){
   users = users.sorted(by: >)
    print(users)
}

func sortedUserNamesZToA(users: inout [String]){
   users = users.sorted(by: <)
    print(users)
}


sortedUserNamesAToZ(users: &usersNames)
sortedUserNamesZToA(users: &usersNames)


//Task five







//Task Six
//Правильных ответов от 2 до 5
let trueAnswers = 2

if trueAnswers == 5 {
    print("Отлично")
} else if trueAnswers == 4 {
    print("Хорошо")
} else if trueAnswers == 3 {
    print("Нормально")
} else { print("Плохо") }


enum Answers: Int{
    case Отлично = 5
    case Хорошо = 4
    case Нормально = 3
    case Плохо = 2
}


switch trueAnswers {
case Answers.Отлично.rawValue:
    print(Answers.Отлично)
case Answers.Хорошо.rawValue:
    print(Answers.Хорошо)
case Answers.Нормально.rawValue:
    print(Answers.Нормально)
case Answers.Плохо.rawValue:
    print(Answers.Плохо)
default:
    break
}
