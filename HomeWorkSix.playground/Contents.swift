import UIKit

//Task one

extension Double{
    
    var mile: Double { return self * 1.6 }
    var ft:   Double { return self * 3280.8}
    var m:    Double { return self * 1000 }
    var mm:   Double { return self * 1000_000}
}

var distance = 1.0

print(distance.mile)
print(distance.ft)
print(distance.m)
print(distance.mm)



//Task two

extension Int {
    
    var powTwo:   Int { return self * self }
    var powThree: Int { return powTwo * self }
}

var someValue = 3


print("!!!!Task Two!!!!")
print(someValue.powTwo)
print(someValue.powThree)


// Task three

struct User {
    
    var name: String
    var surname: String = ""
    var age: Int = 0
    var sport: String? = nil
   
}

extension User {
    
    init(name: String, surname: String, age: Int) {
        
        self.name = name
        self.surname = surname
        self.age = age
    }
    
    init(name: String, age: Int, sport: String) {
        
        self.name = name
        self.age = age
        self.sport = sport
        
        
    }
}

extension User {
    
    func aboutMe() -> String {
        return "Hello!! My name is \(name) \(surname) and me \(age) years old"
    }
    
    func whatIsLike() -> String {
        
        var sports: String
        
        if sport != nil {
            
            sports = "I like \(sport!)"
            
        } else { sports = " I don't have sport" }
        
        return "\(sports)!"
    }
    
}

let nick = User(name: "Nick", surname: "Jason", age: 20)

nick.aboutMe()
nick.whatIsLike()


//Task four

protocol TableProtocolForMusic{
    
    var name: String { get set }
    var artist: String { get }
    var years: Int { get }
    
    func aboutTrackMusic() -> String
    
}

class TableView:TableProtocolForMusic {
    
    var name: String = "Dance with me"
    var artist: String = "Igor Makarov"
    var years: Int = 2019
    
    func aboutTrackMusic() -> String {
        return "\(name) - \(artist) : \(years)"
    }
    
}

let music = TableView()
music.aboutTrackMusic()
