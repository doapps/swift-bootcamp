//: Playground - noun: a place where people can play

import UIKit


// Link:  https://medium.com/the-andela-way/getting-started-with-swift-89877c42660b



//Declaracion de una funcion con parametros externos e internos
func greet(with greeting: String, to personName: String) {
  print("\(greeting), \(personName)!")
}


//Clase Base
class Instrument{
  
  let brand: String
  
  init(brand: String) {
    self.brand = brand
  }
  
  func tune() -> String{
    fatalError("Implement this method for \(brand)")
  }
  
  func play(_ music: Music) -> String{
    return music.prepared()
  }
  
  func perform(_ music: Music){
    print(tune())
    print(play(music))
  }
  
 
  
}

class Music{
  
  let notes: [String]
  
  init(notes: [String]) {
    self.notes = notes
  }
  
  func prepared() -> String{
    return notes.joined(separator: " ")
  }
}


class Piano: Instrument{
  
  let hasPedals: Bool
  let whiteKeys = 52
  let blackKeys = 36
  
  init(brand: String, hasPedals: Bool = false) {
    self.hasPedals = hasPedals
    super.init(brand: brand)
  }
  
  override func tune() -> String{
    return "Piano standar tunnig for \(brand)"
  }
  
  override func play(_ music: Music) -> String {
    let preparedNotes = super.play(music)
    return "Piano playing \(preparedNotes)"
  }
  
  func play(_ music: Music, usingPedals: Bool) -> String{
    let preparedNotes = super.play(music)
    if hasPedals && usingPedals{
      return "Play piano notes \(preparedNotes) with pedals"
    }else{
      return "Play piano notes \(preparedNotes) without pedals"
    }
  }
}


let piano = Piano(brand: "Yamaha", hasPedals: true)
piano.tune()

let music = Music(notes: ["C", "G", "F"])
piano.play(music, usingPedals: false)
piano.play(music)
piano.whiteKeys
piano.blackKeys



class Guitar: Instrument{
  let stringGauge: String
  
  init(brand: String, stringGauge: String = "medium"){
    self.stringGauge = stringGauge
    super.init(brand: brand)
  }
}

class AcousticGuitar: Guitar{
  let numberOfStrings = 6
  let fretCount = 20
  
  override func tune() -> String{
    return "tune \(brand) acoustic with E A D G B E"
  }
  
  override func play(_ music: Music) -> String {
    let preparedNotes = super.play(music)
    return "Play folk tune on frets \(preparedNotes)"
  }
}

class Amplifier{
  
  private var _volume: Int
  private(set) var isOn: Bool
  
  
  init(){
    isOn = false
    _volume = 0
  }
  
  func plugIn(){
    isOn = true
  }
  
  func unplug(){
    isOn = false
  }
  
  var volume: Int{
    get{
      return isOn ? _volume : 0
    }
    set{
      _volume = min(max(newValue,0),10)
    }
  }
  
}

let amplificador = Amplifier()
amplificador.isOn
amplificador.plugIn()
amplificador.isOn
amplificador.volume = 5
amplificador.volume = -9
amplificador.volume

/////--------


var nombre: String? = nil

if let nombre = nombre{
  print(nombre)
}

func printMyName(){
  let miNombre: String? = nil
  
  guard let nombre = miNombre else {
    return
  }
//  if let nombre = miNombre{
//    print(nombre)
//  }
  
  print(nombre)
}


var edad: Int?
var peso: Double?

edad = 15
peso = 80.8

if let edad = edad,
  let _ = peso{
  print(edad)
  print(peso!)
}
peso = nil
print(peso!)











