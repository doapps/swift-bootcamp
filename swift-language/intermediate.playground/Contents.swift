//: Playground - noun: a place where people can play

import UIKit

//1.- Closures
//Se comporta igual a una funcion

var myClosure = {
    (_ te:Int) -> Int in
        return te + 100
}

//pasar un closure como parametro
func executeClosure(_ otherClosure: (_ numb: Int) -> Int) -> Int{
    return otherClosure(400)
}

var final = executeClosure(myClosure)
print(final)

// closure mas compactas
var multiplyNumbers: (Int, Int) -> Int = {$0 * $1}
var mayorNumbers: (Int, Int) -> Int = {$0 < $1 ? $1 : $0}
mayorNumbers(3,4)

//2.- Structures
//son estructuras las cuales son copiadas cuando son instanciadas y pasadas por parametros
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
    mutating func changeX(){ //se utiliza keyword mutating si se desea alterar las propiedades
        self.x += 10
    }
}
//3.- Classes
//son estructuras las cuales son referenciadas cuando son instanciadas y pasadas por parametros

class Book{
    var name = ""
}
let myBook = Book()
myBook.name = "awesome book"
let otherBook = myBook
print(myBook === otherBook) //<-- check if two references point to the same object

//4.- Herencia
//Una clase solamente puede heredar de una sola super clase
class Person{
    var firstName = ""
    var lastName = ""
    func sayMyName(){
        print("Me llamo \(firstName) \(lastName)")
    }
}
//Use final when a class cant be subclassed
final class Student: Person{
  var firstGrade = 0 {
    didSet{
      print("had my first grade")
    }
  }
    var secondGrade = 0
    var averageGrade: Int{
        get{
            return (firstGrade+secondGrade)/2
        }
    }
}

let student = Student()
student.firstGrade = 15
student.firstName = "john"
student.lastName = "hopkins"
student.sayMyName()


//5.- Protocols
//Protocolos definen "comportamiento" lo cual significa que una clase que aplique un protocolo debera satisfacer las propiedades y metodos que este ultimo demande.
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



//6.- Enum
//Enum es un tipo de struct especial que permite una mejor organizacion de codigo en swift
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
    case youBoughtADog(doggie: Dog)
    case youBoughtACat(kittie: Cat)
}

let myCat = BuyMascot.youBoughtACat(kittie: Cat())

switch myCat {
    case .youBoughtADog(let dog):
        print("you bought a dog") //Algo paso cuando compraste un perro
    case .youBoughtACat(let cat):
        print("you bought a cat") // Algo paso cuando compraste un gato
}

