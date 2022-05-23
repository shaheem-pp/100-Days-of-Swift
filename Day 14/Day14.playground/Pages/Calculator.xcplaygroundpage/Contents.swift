//: [Previous](@previous)

import Foundation
import Darwin

var greeting = "Hello, playground"

//: [Next](@next)

print("Welcome to Calculator!")
print("----------------------\n")

let num1 = 20, num2 = 5

func add(){
    let sum = num1 + num2
    print("\(num1) + \(num2) = \(sum)")
}

func sub(num1 : Int, num2 : Int){
    let dif = num1 - num2
    print("\(num1) - \(num2) = \(dif)")
}

func mul() -> String{
    return "\(num1) x \(num2) = \(num1 * num2)"
}

func div(num1: Int, num2: Int) -> String{
    return "\(num1) / \(num2) = \(num1 / num2)"
}

add()
sub(num1 : num1, num2 : num2)
let pro = mul()
print(pro)
let quo = div(num1 : num1, num2 : num2)
print(quo)



