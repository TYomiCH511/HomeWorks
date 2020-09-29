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
let trueAnswers = 18
let quantityAnswers = 20
let gradation: Double = round(4 / Double(quantityAnswers) * Double(trueAnswers))

if gradation == 4 {
    print("Отлично")
} else if gradation == 3 {
    print("Хорошо")
} else if gradation == 2 {
    print("Нормально")
} else { print("Плохо") }


enum Answers: Double{
    case отлично = 4
    case хорошо = 3
    case нормально = 2
    case плохо = 1
    
    var answers: Answers!{
        
    switch self {
        case .отлично:
            print(Answers.отлично)
        case .хорошо:
            print(Answers.хорошо)
        case .нормально:
            print(Answers.нормально)
        case .плохо:
            print(Answers.плохо)
   }
        
    return Answers(rawValue: 4)
    }
}

if let answer = Answers(rawValue: gradation) {
    print(answer)
} else { print("No corret value")}
