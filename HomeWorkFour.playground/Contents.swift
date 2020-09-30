import UIKit


//Task one

class Player {
    
    let name: String
    let age: Int
    
    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }
}

struct PlayerTwo {
    
    let name: String
    let age: Int
}

let playerOne = Player(name: "Bob", age: 20)
let playerTwo = PlayerTwo(name: "John", age: 30)

// Инициализация встроена в структуру по умолчанию, а в классах если не присвоить значения по умолчанию
//необходимо сделать инициализацию


//Task two


class PlayerThree {
    
    let name: String
    let age: Int
    let sport: String
    init(name: String, age: Int, sport: String = "") {
        self.name = name
        self.age = age
        self.sport = sport
    }
}

let playerSport = PlayerThree(name: "Alex", age: 25, sport: "Football")
let playerNoSport = PlayerThree(name: "Nick", age: 22)


//Task three

struct PlayerFour {
    
    let name: String
    let surname: String
    let age: Int
    var quantityWins: Int = 0
  
    init?(name: String, surname: String = "", age: Int, quantityWins: Int) {
        self.name = name
        self.surname = surname
        self.age = age
        self.quantityWins = quantityWins
        
        if quantityWins < 0 {
            return nil
        }
    }
    
    init(name: String, surname: String = "", age: Int) {
        self.name = name
        self.surname = surname
        self.age = age
    }
    
}


let playerWithSurname = PlayerFour(name: "Jack", surname: "Jason", age: 18)
let playerWinner = PlayerFour(name: "Kolin", surname: "Manson", age: 32, quantityWins: 1)


//Task four

//В труктурах нет деинициализатора, а только в классах, потому что Структура - это тип данных, а класс это тип-ссылка
//Для реализации утечки памяти требуется посчет ссылок на класс  ARC


// Task five

class MainScreenBackgroundColor {
    
    let backgroundColor: ColorScreen
    
    enum ColorScreen{
        case black, tranperent, skyBlue
    }
    
    init(backgroundColor: ColorScreen) {
        self.backgroundColor = backgroundColor
    }
}

let backgrondColor = MainScreenBackgroundColor(backgroundColor: .black)
