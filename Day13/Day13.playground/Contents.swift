import UIKit

var greeting = "Hello, playground"
let pi = 3.14
let fifty : Int = 50
let oneMillion = 1_000_000
var goingTo : String = "London"
goingTo = "Toronto"
let isRunning = true
var age = 30
var latitude : Double = -893246.123443521


var a = 1.1
var b = 2.2
var c = a + b
var name1 = "Tim McGraw"
var name2 = "Romeo"
var both = name1 + " and " + name2
c > 3
c >= 3
c > 4
c < 4
var name = "Tim McGraw"
name == "Tim McGraw"
var stayOutTooLate = true
stayOutTooLate
!stayOutTooLate
name == "Tim McGraw"
name != "Tim McGraw"



"Your name is \(name)"
"Your name is \(name), your age is \(age)."


//-----------------------------------------------Arrays-----------------------------------------------

//Arrays let you group lots of values together into a single collection, then access those values by their position in the collection. Swift uses type inference to figure out what type of data your array holds

var arrayOfNumbers = [1,2,3,4,5,6,7]
var oneDirection = ["Nial", "Liam", "Louis", "Harry"]
var exDirectioner = ["Zain"]
oneDirection[3]
type(of: arrayOfNumbers)
var arrayOfEven : [Int] = [2,4,6,8]
var departments : [Any] = [2009, "dcsa", 2020, "psychology"]
var haikyuu : [String] = []
oneDirection+exDirectioner
departments += [2022]



//--------------------------------------------Dictionaries---------------------------------------------

//type of collection, but they differ from arrays because they let you access values based on a key you specify.

var nationalTeam : [String:Any] = [
    "Group A" : "Karasuno",
    "Group B" : "Nekoma",
    "isActive" : true
]
var isActiveGame : Bool = nationalTeam["isActive", default: "Nil"] as! Bool
if (isActiveGame==false){
    print(nationalTeam["Group A", default: "Nil"],"Plays against",nationalTeam["Group B", default: "Nil"], "is not live")
}else{
    print(nationalTeam["Group A", default: "Nil"],"Plays against",nationalTeam["Group B", default: "Nil"], "is live")
}


//----------------------------------------Conditionals & Loops-----------------------------------------

for i in 1...10{
    if i==5 || i==10{
        continue
    }
    print("\(i) x 5 = \(i*5)")
}

var str = "Fakers gonna"

for _ in 1 ... 5 {
    str += " fake"
}

print(str)


var songs = ["Shake it Off", "You Belong with Me", "Look What You Made Me Do"]

for song in songs {
    print("My favorite song is \(song)")
}


var people = ["players", "haters", "heart-breakers", "fakers"]
var actions = ["play", "hate", "break", "fake"]

for i in 0 ..< people.count {
    var str = "\(people[i]) gonna"

    for _ in 1 ... 5 {
        str += " \(actions[i])"
    }

    print(str)
}

var counter = 0

while true {
    print("Counter is now \(counter)")
    counter += 1

    if counter == 556 {
        break
    }
}


let liveAlbums = 2

switch liveAlbums {
case 0:
    print("You're just starting out")

case 1:
    print("You just released iTunes Live From SoHo")

case 2:
    print("You just released Speak Now World Tour")

default:
    print("Have you done something new?")
}

let studioAlbums = 5

switch studioAlbums {
case 0...1:
    print("You're just starting out")

case 2...3:
    print("You're a rising star")

case 4...5:
    print("You're world famous!")

default:
    print("Have you done something new?")
}

