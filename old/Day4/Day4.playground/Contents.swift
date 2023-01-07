import UIKit
print("print using for loop and range")
let numbers = 1...10
for number in numbers{
    print(number)
}
print("\nPrint from array using for loop")
let oneDirection = ["Nial", "Liam", "Louis", "Harry", "Zain"]
for directioner in oneDirection{
    print("One Direction \(directioner)")
}
let oneDirectionLast = ["Horan", "Payne", "Tomlinson", "Styles", "Malik"]
print("\nDirectionar full name from 2 arrays")
for i in 0...4{
    print("\(oneDirection[i]) \(oneDirectionLast[i])")
}
print("\nNo Constant for loop")
//If you don’t use the constant that for loops give you, you should use an underscore instead so that Swift doesn’t create needless values:
for _ in 1...5{
    print("Hello World")
}
print("\nEven Numbers")
var limit = 0
while(limit<=10){
    print(limit)
    limit += 2
}

//repeat loop

var number = 1
print("\nHide and seek")
repeat {
    print(number)
    number += 1
} while number <= 20

print("Ready or not, here I come!")

print("\nExit vs Continue")

for i in 1...10{
    for j in 1...10{
        if i==5 && j==5{
            print("\nexit\n")
            exit
        } else if i==7 || j==7 {
            print("\ncontinue\n")
            continue
        }
        else{
            print("(\(i),\(j))")
        }
    }
}

print("\nouterLoop at 10")
outerLoop: for i in 1...10{
    for j in 1...20{
        print("\(i) x \(j) =",i*j)
        if i*j == 10{
            break outerLoop
        }
    }
}


