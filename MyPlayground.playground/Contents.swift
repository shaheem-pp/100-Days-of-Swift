import UIKit

var greeting = "Hello, playground"


var highScore : Double = 100
var myScore = 50.00

var percentage = (myScore/highScore) * 100

print("\(percentage)%")

var heights = [Int]()

heights.append(180)
heights.append(168)
heights.append(188)

print(heights)

var age = Array<Int>()

age.append(23)
age.append(24)
age.append(20)

print(age)


var teams = [String:[String:String]]()
teams["Karasuno"]=[
    "Middle Defender":"Hinata"
]

print(teams)

var onePiece = Dictionary<String, String>()
onePiece["Captain"] = "Monkey D Luffy"
print(onePiece)

sum(a=10,b=10)

func sum(a:Int,b:Int){
    print(a+b)
}


