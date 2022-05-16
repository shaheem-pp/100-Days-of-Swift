import UIKit

//Day 2

// Arrays

let harry = "Harry Styles"
let nial = "Nial Horan"
let liam = "Liam Payne"
let louis = "Louis Tomlinson"
let zack = "Zain Malik"
let oneDirection = [nial, liam, louis, harry, zack]
oneDirection[4]

// sets
//Items aren’t stored in any order; they are stored in what is effectively a random order.
//No item can appear twice in a set; all items must be unique.

let color = Set(["Red", "Green", "Blue"])


// tuples
//You can’t add or remove items from a tuple; they are fixed in size.
//You can’t change the type of items in a tuple; they always have the same types they were created with.
//You can access items in a tuple using numerical positions or by naming them, but Swift won’t let you read numbers or names that don’t exist.

var karasuno10 = (first: "Shoyo", second:"Hinata", age:16, 164)

karasuno10.0
karasuno10.first
karasuno10.age
var height = "Height of \(karasuno10.first) \(karasuno10.second) is \(karasuno10.3)"
karasuno10

//---------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------
// Array -> can contain duplicates, order of item, []   |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
// Set -> Unique, no precise position, Set()            |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
// Tuple -> Fixed order of items, precise position, ()  |||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||||
//---------------------------------------------------------------------------------------------------------------------
//---------------------------------------------------------------------------------------------------------------------

// Dictionaries

var karasuno = [
    "Captain" : "Daichi Sawamura",
    "Libero" : "Yu Nishinoya",
    "Wing Spiker" : "Ryu Tanaka",
    "Ace" : "Asahi Azumane",
    "Middle Blocker" : "Kei Tsukishima",
    "Decoy" : "Shoyo Hinata",
    "Setter 1" : "Tobio Kageyama",
    "Setter 2" : "Koshi Sugawara",
    "Pinch Server 1" : "Tadashi Yamaguchi",
    "Pinch Server 2" : "Chikara Ennoshita"
]

//if default haven't given String interpolation produces a debug description for an optional value; did you mean to make this explicit? warning is shown also the karasunoSetter variable will show a logical error
var suga = karasuno["Setter 2", default: "Unknown"]
var tobio = karasuno["Setter 1", default: "Unknown"]
var karasunoSetters = "Karasuno setters are \(suga) and \(tobio)"
// if , default: "Unknown" not given output will be Karasuno setters are Optional("Koshi Sugawara") and Optional("Tobio Kageyama")


//-------------------------------------------------Empty Collestions---------------------------------------------------

//Empty Dictionary
var teams = [String:String]()
teams["Miyagi"] = "Karasuno"
teams["Tokyo Metropolitan"] = "Nekoma"
teams["Tokyo"] = "Fukurodani"
teams

//Empty Array
var MSBY = [String]()
MSBY.append("Shoyo Hinata")
MSBY.append("Miya Atsumu")
MSBY.append("Kotaro Bokuto")
MSBY.append("Kiyoomi Sakusa")
MSBY

//Empty Set
var prime = Set<Int>()
prime = Set([2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97])

//If you wanted, you could create arrays and dictionaries with similar syntax:
var scores = Dictionary<String, Int>()
var results = Array<Int>()

scores["Maths"]=88
scores["CS"]=90
scores["Physics"]=75
scores
results.append(88)
results.append(90)
results.append(75)
results

//----------------------------------------------------Enumeration------------------------------------------------------

enum result {
    case won
    case fail
}

let prefecturalGame = result.won
let semiFInal = result.fail

var karasuno_vs_shiratorizawa = "Karasuno \(prefecturalGame) against Shiratorizawa"
var karasuno_vs_kamomedai = "Karasuno \(semiFInal) against Kamomedai"


enum playerActivity {
    case bored
    case running(destination: String)
    case talking(topic: String)
    
}

let talking = playerActivity.talking(topic: "Volleyball")
let bored = playerActivity.bored
let running = playerActivity.running(destination:"Shiratorizawa")

enum Planet: Int {
    case mercury = 1
    case venus
    case earth
    case mars
}
let planet = Planet(rawValue: 2)

