import UIKit


//Task one
protocol Summable { static func +(lhs: Self, rhs: Self) -> Self }
extension Int: Summable {}
extension Double: Summable {}
extension Float: Summable {}

func add<T: Summable>(valueOne: T, valueTwo: T) -> T {
  return valueOne + valueTwo
}
let floatValue: Float = 1.3
print(add(valueOne: 11, valueTwo: 22.5))
print(add(valueOne: 11, valueTwo: floatValue))



//Task two




//Task three

struct Generic<T> {
    
    var elements = [T]()
    
    mutating func increase(element: T) {
        elements.append(element)
        
    }
}
var genericObject = Generic<Any>()

genericObject.increase(element: 23)
genericObject.increase(element: "3")
genericObject.increase(element: 23.3)
print(genericObject)
