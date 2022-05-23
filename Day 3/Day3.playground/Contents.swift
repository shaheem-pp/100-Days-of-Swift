import UIKit

let num1 = 10
let num2 = 5

let sum = num1 + num2
let difference = num1 - num2
let product = num1 * num2
let quotient = num1 / num2
let remainder = num1 % num2

let one = "One"
let oneDirection = one + " Direction"

let active = ["Harry", "Nial", "Liam", "Louis"]
let inActive = ["Zain"]
let directioners = active + inActive

var score = 70
score += 5 //score = score + 5

var university = "University of "
university += "Calicut"

num1 == num2
num1 != num2
num1 > num2
num1 < num2
num1 >= num2
num1 <= num2

"a" <= "A"

if(num1 >= num2){
    print("num1(\(num1)) is largest")
} else{
    
    print("num2(\(num2)) is largest")
}

let player = ""

if (player == "A"){
    print("Player A")
} else if (player == "B"){
    print("Player B")
} else {
    print("Player data unavailable")
}

let height1 = 196
let height2 = 182
let height3 = 174

if(height1 >= height2 && height1 >= height3){
    print("Height1 is largest -> \(height1)")
} else if(height2 >= height3 && height2 >= height1){
    print("Height2 is largest -> \(height2)")
} else{
    print("Height3 is largest -> \(height3)")
}

if( height1>=190 || height2 >= 190){
    print("Either 1 or both is more than 190cm")
}

let salary = 2_00_000
print(salary >= 2_50_000 ? "Pay Income Tax" : "No income tax")

let option = 3
switch(option){
case 1 :
    print("Sum -> \(sum)")
case 2 :
    print("Difference -> \(difference)")
case 3 :
    print("Product -> \(product)")
case 4 :
    print("Quotient -> \(quotient)")
case 5 :
    print("Remainder -> \(remainder)")
default :
    print("Invalid option")
}

//Swift will only run the code inside each case. If you want execution to continue on to the next case, use the fallthrough keyword like this:
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

// ... includes last
// ..< less than last

switch score{
case 70...100:
    print("A")
case 50..<70 :
    print("B")
case 0..<50 :
    print("Failed")
default:
    print("Invalid input")
}

