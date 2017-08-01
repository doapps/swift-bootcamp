//: Playground - noun: a place where people can play

//This file will containt swift 3 examples for the basics of the language. In order to achieve the complete learning of the language you should practice in the order.


import UIKit

//Variables and constants

//var
//let
//set names in lowwercamellcase

var thisIsVariable = 0  //mutable
let thisIsConstant = 0  //inmutable
let 😀 = " happy "

//Operators

thisIsVariable += 10
thisIsVariable -= 2
thisIsVariable *= 15
thisIsVariable /= 2

var sayHi = "hello"
sayHi += " jhon"
sayHi = "hello" + " jhon " + "Hopkins"


//TYPES
//Int, Float, Double, Bool, String, Character, YourOwnType
//Float less decimal
//Double more decimal
//use UpperCamelCase

let integerNumber: Int = 15


//String
let namePerson = "Jhon"
let lastName = "Hopkins"
let jonhSayHi = "Hello" + namePerson + lastName
let interpolationSayHi = "Hello \(namePerson) \(lastName)"
interpolationSayHi.uppercased()
interpolationSayHi.lowercased()
interpolationSayHi.isEmpty


//Tuples
//recommend use: send and receive multiple data from a function
var worker = ("John", 35, true)
worker.0
worker.1
worker.2
var yetOtherWorker = (name: "John", age: 35, isActive: true)
yetOtherWorker.name
yetOtherWorker.age
yetOtherWorker.isActive

//IF statement
//cmd+[ or ] for identation


//loops

//continue----->next item in loop
//break ------->leave loop

for x in 1..<5 {
    print(x)
}

var i = 0
while i<10{
    print("\(i)")
    i+=1
}


//Switching
//Ones the case is match the control flow will continue and ignore the other cases
//for a fallthrough escenario use the kayword fallthrough

let up = 1
let right = 2
let down = 3
let left = 4
let movement = 1

switch movement {
case up:
    print("you went up")
    fallthrough
case right:
    print("you went right")
    fallthrough
case down:
    print("yow went down")
case left:
    print("you went left")
default:
    print("you didnt move")
}

var myMovements = (up: 0,right: 0, down: 0, left: 0)
switch myMovements {
case (1,_,_,_):
    print("you went up")
case (_,1,_,_):
    print("you went right")
case (_,_,1,_):
    print("you went down")
case (_,_,_,1):
    print("you went left")
default:
    print("you didnt move")
}

var myRunningMovements = (up: 1,right: 1, down: 0, left: 0)
switch myRunningMovements {
case let (up,right,_,_) where up == 1 && right == 1:
    print("runing up==\(up) and right==\(right) corner")
default:
    print("not move at all")
}

















