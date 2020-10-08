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
    var age: Int
    var sport: String? = nil
   
}

extension User {
    
    init(name: String, surname: String, age: Int, sport: String) {
        
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

protocol TableForMusicProtocol{
    
    var name: String { get set }
    var artist: String { get set }
    var year: Int { get set }
    
    func aboutTrackMusic() -> (String, String, Int)
    
    func sendFeedback() -> String
}

struct TableView:TableForMusicProtocol {
    
    var name: String
    var artist: String 
    var year: Int
    
    func aboutTrackMusic() -> (String, String, Int) {
        
        return (name, artist, year)
    }
    
    func sendFeedback() -> String {
        return "Here your feedback for us"
    }
    
}

let nameComposition = ["Dance with me", "Cold me", "I love you"]
let artist = ["Igor Makarov", "Maksim Skuratov", "Josh Newton"]
let yearsCompositon = [2019, 2018, 2020]

var tableMusic = [TableView]()

for count in 0...nameComposition.count - 1 {
    
    let newMusic = TableView(name: nameComposition[count], artist: artist[count], year: yearsCompositon[count])
    tableMusic.append(newMusic)
}

print(tableMusic[0].aboutTrackMusic())
print(tableMusic[0].sendFeedback())
print(tableMusic[1].aboutTrackMusic())
print(tableMusic[2].aboutTrackMusic())

