//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"


let myView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
myView.backgroundColor = .red

//CornerRadius

myView.layer.cornerRadius = 10
myView.layer.cornerRadius = myView.bounds.height/2

myView

//Shadow
myView.layer.shadowRadius = 5
myView.layer.shadowOpacity = 1
myView.layer.shadowOffset = CGSize(width: 0, height: 0)
myView.layer.shadowColor = UIColor.green.cgColor

myView


//Gradient

let gradient = CAGradientLayer()
let colors = [UIColor.black.cgColor,UIColor.green.cgColor]
gradient.frame = myView.layer.frame
gradient.startPoint = CGPoint(x: 0.2, y: 0.2)
gradient.endPoint = CGPoint(x: 0.8, y: 0.8)
gradient.colors = colors
myView.layer.addSublayer(gradient)


myView

















