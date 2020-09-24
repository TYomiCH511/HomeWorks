import UIKit


//Task one

let name = "Ivan"
let surname = "Ivanov"
var age = 30
let gender = "man"
let university = "PSU"

print("Hello, I'm \(name) \(surname), and me \(age) years old. I am \(gender). I am studying in \(university)")


//Task two

let someInt = 3
let someFloat: Float = 4.8
let someDouble = 5.5

let someIntSumm = someInt + Int(someFloat) + Int(someDouble)
let someFloteSumm = Float(someInt) + someFloat + Float(someDouble)
let someDoubleSumm = Double(someInt) + Double(someFloat) + someDouble

print("IntSumm equals  \(someIntSumm)")
print("FloatSumm equals \(someFloat)")
print("DoubleSumm equals \(someDouble)")


//Task three

let numberOne = (5 + 3) / 2
let numberTwo = 4 * 3 - 10


let someStringOne = "Hello"
let someStringTwo = "World"
let summString = someStringOne + ", " + someStringTwo + "!"

print(summString)
