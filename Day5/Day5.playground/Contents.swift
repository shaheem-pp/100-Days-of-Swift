import UIKit

var greeting = "Hello, playground"

func printMessage(){
    let message = """
Hello World
I'm SHaheem
"""
    print(message)
}

printMessage()

func sayName(name:String){
    let name = name
    print("Hello", name)
}

sayName(name: "Shan")

func square(num:Int){
    print(num*num)
}

square(num: 5)


func addIntro(name:String) -> String{
    return "Hello I'm \(name)"
}

let myIntro = addIntro(name: "Shan")
print(myIntro)

//--------Calculator---------

func sum(num1:Int,  num2:Int){
    print("Sum = ", num1+num2)
}

func dif(num1:Int, num2:Int) -> Int {
    return num1-num2
}

func mul(){
    let num1 = 5, num2 = 5
    print(num1*num2)
}

func div() -> Double{
    let num1 = 3.5, num2 = 2.0
    return num1/num2
}

sum(num1: 20, num2: 30)

let minus = dif(num1: 20, num2: 3)
print(minus)

mul()

let q = div()
print(q)


//this doesn't mean much, the to label is only for the code readability
func sayHello(to name: String) {
    print("Hello, \(name)!")
}

sayHello(to: "Taylor")

func greet(_ person: String) {
    print("Hello, \(person)!")
}
greet("Taylor")
print()
print()
print()
print()
func doing100DaysSwiftChalenge(name:String, isDoing: Bool = true){
    print("Question: Is \(name) doing 100 Day Swift Challenge?\nAnswer: \(isDoing)")
}

doing100DaysSwiftChalenge(name: "Naswih")
doing100DaysSwiftChalenge(name: "Shan", isDoing: false)


func arrayPrinter(numbers:Int...){
    for i in numbers{
        print(i)
    }
}

arrayPrinter(numbers: 1,2,3,4,5,6)

enum PasswordError: Error {
    case obvious
}

func checkPassword(_ password: String) throws -> Bool {
    if password == "password" {
        throw PasswordError.obvious
    }

    return true
}

do {
    try checkPassword("password")
    print("That password is good!")
} catch {
    print("You can't use that password.")
}

func doubleInPlace(number: inout Int) {
    number *= 2
}

var myNum = 10
doubleInPlace(number: &myNum)
