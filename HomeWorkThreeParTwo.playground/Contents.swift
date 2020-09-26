import UIKit

struct Users {
    let name: String
    let surname: String
    let yearBirthday: Int
    var friendList: [String]
}

let userOne = Users(name: "Mariya",
                    surname: "Ivanova",
                    yearBirthday: 1994,
                    friendList: ["Katya", "Vlada",  "Sergei", "Nick", "Ken"])

let userTwo = Users(name: "Artem",
                    surname: "Ivanov",
                    yearBirthday: 1997,
                    friendList: ["Bob", "Alex", "Inna", "Sergei", "Nick", "Ken"])

let userThree = Users(name: "Ken",
                    surname: "Jankins",
                    yearBirthday: 1992,
                    friendList: ["Bob", "Alex", "Inna", "Mariya", "Anna", "Artem", "Jak"])


//Task three / part two
var usersMesseges: [Users] = [userOne, userTwo, userThree]

let sortedUsersAgeBirthday = usersMesseges.sorted(by: {$0.yearBirthday < $1.yearBirthday})

for user in sortedUsersAgeBirthday {
    print(user.name, user.yearBirthday)
}

let sortedUsersCountFriend = usersMesseges.sorted(by: {$0.friendList.count > $1.friendList.count})

for user in sortedUsersCountFriend {
    print(user.name, user.friendList.count)
}

//Task four

class Integer {
    var value = 5
}

let integerCopy = Integer()

var i = integerCopy

var b = i

b.value = 1

print(i.value)

struct IntegerTwo {
    var value = 5
}

let integerCopyTwo = IntegerTwo()

var iTwo = integerCopyTwo

var bTwo = iTwo

bTwo.value = 1

print(iTwo.value)


//Изменилось выведенно значение, из-за того что создавая копию класса опирается на него как ссылку
//в ту область памяти где записан родительское значение, а структура создает всегда новую переменную со своей
//ячейкой выделленной памяти присваивая данные которые при изменении не затрагивают предыдующие
