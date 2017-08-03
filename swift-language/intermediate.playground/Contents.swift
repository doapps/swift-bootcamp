//: Playground - noun: a place where people can play

import UIKit

//closures
//block of code that executes what is inside []

var testing: String = "HALO"
var myClosure = {
    (_ te:Int) -> Int in
        return te + 100
}
//pass a closure as a parameter
func executeClosure(_ otherClosure: (_ numb: Int) -> Int) -> Int{
    return otherClosure(20)
}

var final = executeClosure(myClosure)
print(final)

// executeClosure( ((20){print("DWDWDWDd")}) )
// executeClosure(myClosure)
//executeClosure(func (num: Int): Int -> {
//    print(num)
//    })


//More compact
var multiplyNumbers: (Int, Int) -> Int = {$0 * $1}
var mayorNumbers: (Int, Int) -> Int = {$0 < $1 ? $1 : $0}
mayorNumbers(3,4)

//Structs
//objects are copied
struct Location{
    var x = 15
    var y = 0
    var planeLocation: (Int,Int){
        get{
            return (x,y)
        }
        set{
            x = newValue.0
            y = newValue.1
        }
    }
    mutating func change(){
        self.x += 10
    }
}
//Classes
//objects are referenced

class Book{
    var name = ""
}
let myBook = Book()
myBook.name = "awesome book"
let otherBook = myBook
print(myBook === otherBook) //<-- check if two references point to the same object

//Inheritance
//A class can be subclass only one superclass
class Person{
    var firstName = ""
    var lastName = ""
    func sayMyName(){
        print("Me llamo \(firstName) \(lastName)")
    }
}
//Use final when a class cant be subclassed
final class Student: Person{
    var firstGrade = 0
    var secondGrade = 0
    var averageGrade: Int{
        get{
            return (firstGrade+secondGrade)/2
        }
    }
}

let student = Student()
student.firstName = "john"
student.lastName = "hopkins"
student.sayMyName()

//Protocols
protocol Printable{
    var message: String { get set }
    func showMessage()
    init(message: String)
}
class Announcer: Printable{
    var message = ""
    
    func showMessage() {
        print("my own implementation \(message)")
    }
    
    //This will require at the moment of instanciate
    required init(message: String) {
        self.message = message
    }
    //but if you create an empty initializer you can use this insted
    init() {
        
    }
}
extension Printable{
    func showMessage(){
        print("default... \(message)")
    }
    
}

let announcer = Announcer()
announcer.message = "Work it!"
announcer.showMessage()



func sumaDosDigitos(con primer:Int, y segundo:Int) -> Int {
    return primer + segundo
}

//enum

enum Digits: Int{
    case uno = 1
    case dos
    case tres
    case cuatro
}
var numeroCuatro:Digits = .cuatro

//using a switch

switch numeroCuatro {
case .uno:
    print("tengo el numero uno")
case .dos:
    print("tengo el numero dos")
case .tres:
    print("tengo el numero tres")
case .cuatro:
    print("tengo el numero cuatro")
}

enum Campaing: String{
    case Terran
    case Zerg
    case Protoss
    
    var stringName: String{
        return rawValue.uppercased()
    }
}
let camp:Campaing = .Protoss
camp.stringName

class Dog{
}
class Cat{
}

enum BuyMascot{
    case awesomeDog(doggie: Dog)
    case awesomeCat(kittie: Cat)
}

let myCat = BuyMascot.awesomeCat(kittie: Cat())

switch myCat {
    case .awesomeDog(let dog):
        print("you bought a dog")
    case .awesomeCat(let cat):
        print("you bought a cat")
}






















