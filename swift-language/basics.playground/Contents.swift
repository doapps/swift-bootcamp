//: Playground - noun: a place where people can play



import UIKit

//1.- Variables and constants

//var se utiliza para declarar una variable
//let se utiliza para declarar una constante
//se recomienda persistemente que se declaren los nombres en lowwercamellcase

var thisIsVariable = 0  //mutable
let thisIsConstant = 0  //inmutable
let 😀 = " happy "

//2.- Operadores

thisIsVariable += 10
thisIsVariable -= 2
thisIsVariable *= 15
thisIsVariable /= 2

var sayHi = "hello"
sayHi += " jhon"
sayHi = "hello" + " jhon " + "Hopkins"


//3.- Tipos
//Existen los tipos Int, Float, Double, Bool, String, Character, YourOwnType
//Float para menos decimales
//Double para más decimales
//usa UpperCamelCase para la definicion de tipos

let integerNumber: Int = 15


//4.-String
let namePerson = "Jhon"
let lastName = "Hopkins"
let jonhSayHi = "Hello" + namePerson + lastName
let interpolationSayHi = "Hello \(namePerson) \(lastName)"
interpolationSayHi.uppercased()
interpolationSayHi.lowercased()
interpolationSayHi.isEmpty


//5.- Tuplas
//se recomienda su uso en funciones cuando se quiere enviar y recibir multiples parametros
var worker = ("John", 35, true)
worker.0
worker.1
worker.2
var yetOtherWorker = (name: "John", age: 35, isActive: true)
yetOtherWorker.name
yetOtherWorker.age
yetOtherWorker.isActive

//6.- Condicionales

if yetOtherWorker.name == "John"{
  print("I found a John")
}

//7.- Loops
//continue----->next item in loop
//break ------->leave loop
let myOtherAwesomeArray = ["1","2","3","4","5","6","999999"]
for (index,number) in myOtherAwesomeArray.enumerated(){
  print("index=\(index),number=\(number)")
}
for x in 1..<5 {
    print(x)
}
var i = 0
while i<10{
    print("\(i)")
    i+=1
}

//8.- Switching
//Onces the case is match the control flow will continue and ignore the other cases
//for a fallthrough escenario use the kayword fallthrough

let up = 1
let right = 2
let down = 3
let left = 4
let movement = 1

switch movement {
case up:
    print("you went up")
    fallthrough //<-----Mira esto
case right:
    print("you went right")
    fallthrough //<-----Mira esto
case down:
    print("yow went down")
case left:
    print("you went left")
default:
    print("you didnt move")
}

var myMovements = (up: 0,right: 0, down: 0, left: 0)
switch myMovements {
case (1,_,_,_):     // los subguiones permiten ignorar ciertos valores
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
case let (up,right,_,_) where up == 1 && right == 1: //Se puede aplicar condiciones en el case
    print("runing up==\(up) and right==\(right) corner")
default:
    print("not move at all")
}

//9.- Functions
//definition
func functionName(){
}

//Naming
func functionNameLowerCamelCaseWith(FirstParam first:String, andLastParam second: String)->Void{
}
functionNameLowerCamelCaseWith(FirstParam: "", andLastParam: "")

//returning multiple values
func functionReturnMultipleWith() -> (first: String,second: String){
    return (first:"Halo",second:"you")
}
print("\(functionReturnMultipleWith().first) \(functionReturnMultipleWith().second)")

//default parameters value
func someFunction(value: Int = 1500){
    print(value)
}
someFunction()
someFunction(value: 17)

//inout parameters
// existen restricciones dependiendo del tipo de estructura que se desee enviar
// es util para tipos primitivos como Int, String, Double, Float, etc
func changeNumeritoValue(num: inout Int){
    num = 1720
}
var myNumerito = 16
changeNumeritoValue(num: &myNumerito)
print(myNumerito)

//10.-Optionals
//Se debe de considerar a los optional como un tipo de datos más
var message: String? = nil
var otherMessage: String? = nil
message = "HALO"
if let message = message{ //<--shadowing: puedo crear otra variable (dentro del scope) que se llame igual al optional
    print("\(message) you")
}

if let message = message, let otherMessage = otherMessage{ //<- safe unwrapper
    print("this will appear only if the evaluated variables exists")
}
func validateAccountWith(number: Int?){
    guard number != nil else{
      print("number=\(number!)") //<--- Force unwrapper.
        return
    }
}

//11.- Array
//IMPORTANTE: para esta estructura si es imperativo el orden en el que almacena los elementos
//Definition
//El uso es similar a otros lenguajes
let myAwesomeArray: [Int] = []
let awesomeNames = ["Jack", "Jhon"]

//12.- Diccionarios
//Se utiliza "llaves" para acceder al contenido almacenado
//IMPORTANTE: a esta estructura ignora el orden en el que se almacena los elementos
//definition
let myDictionary = ["key":"value"]
let myOtherDictionary: [Int: String] = [:]




