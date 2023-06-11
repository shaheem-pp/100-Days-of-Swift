import UIKit

var greeting = "Hello, playground"
print(greeting)


struct Toys{
    var name : String
    var numbers : Int
    var paintingAbility: (() -> Void)?
}

let car = Toys(name: "MacQueen", numbers: 2, paintingAbility: nil)
let giraffe = Toys(name: "Tess", numbers: 1, paintingAbility: {print("Tess can Paint👩🏻‍🎨")})


func sayHello(){
    print("Hello")
}

sayHello()
sayHello()
sayHello()

func sum(num1:Int,num2:Int)->Int{
    return num1+num2
}

var value = sum(num1: 10, num2: 10)
print(value)

class Chef {
    var name: String = ""
}

class myChef: Chef {
    func cook(){
        print("Your chef is cooking")
    }
}

var me = myChef()
me.name="Hello"
print(me.name)
me.cook()

