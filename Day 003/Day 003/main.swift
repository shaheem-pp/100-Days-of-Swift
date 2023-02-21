//
//  main.swift
//  Day 003
//
//  Created by Shaheem PP on 21/02/23.
//

import Foundation

// --------------------------------------------- Arithmetic operators ---------------------------------------------

let firstScore = 12
let secondScore = 4
let total = firstScore + secondScore
let difference = firstScore - secondScore
let product = firstScore * secondScore
let divided = firstScore / secondScore
let remainder = 13 % secondScore
print(firstScore,secondScore,total,difference,product,divided,remainder)

// --------------------------------------------- Assignment operators ---------------------------------------------

var score = 95
score -= 5
var quote = "The rain in Spain falls mainly on the "
quote += "Spaniards"
print(score,quote)

// --------------------------------------------- Comparison operators ---------------------------------------------

let eng = 6
let math = 4
print(eng == math)
print(eng != math)
print(eng < math)
print(eng >= math)
print("Taylor" <= "Swift")

// -------------------------------------------------- Conditions --------------------------------------------------

let narutoUzumaki = 10
let sasukeUchiha = 10
let harunoSakuro = -10
let hatakeKakashi = 12
let minatoNamikaze = 15

if narutoUzumaki > sasukeUchiha{
    print("Sasuke is lower than Naruto")
}else if hatakeKakashi > harunoSakuro && hatakeKakashi > minatoNamikaze{
    print("Kakashi sensei is adipoli you know")
}else{
    print("We miss Jiraiya Sensei😭")
}
let isSakuraTheWorst : Bool = sasukeUchiha == narutoUzumaki ? true : true

print("Is sakura the worst? "+String(isSakuraTheWorst))

// ---------------------------------------------------- Switch ----------------------------------------------------

let weather = "sunny"
switch weather {
case "rain":
    print("Bring an umbrella")
case "snow":
    print("Wrap up warm")
case "sunny":
    print("Wear sunscreen")
    fallthrough
default:
    print("Enjoy your day!")
}
//Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword

let dsScore = 760
switch dsScore{
case 0...36:
    print("You failed")
case 37..<45:
    print("Just passed")
case 46...75:
    print("Do best next time!")
case 76..<101:
    print("THat's a cool grade")
default:
    print("iSHeri!")
}
