//
//  main.swift
//  Day 002
//
//  Created by Shaheem PP on 20/02/23.
//

import Foundation

// 1. Arrays, sets, tuples, and dictionaries let you store a group of items under a single value. They each do this in different ways, so which you use depends on the behavior you want.
// 2. Arrays store items in the order you add them, and you access them using numerical positions.
// 3. Sets store items without any order, so you can’t access them using numerical positions.
// 4. Tuples are fixed in size, and you can attach names to each of their items. You can read items using numerical positions or using your names.
// 5. Dictionaries store items according to a key, and you can read items using those keys.
// 6. Enums are a way of grouping related values so you can use them without spelling mistakes.
// 7. You can attach raw values to enums so they can be created from integers or strings, or you can add associated values to store additional information about each case.


// ---------------------------------------------------- Arrays ----------------------------------------------------

let khaleefa1 = "Aboobacker"
let khaleefa2 = "Ummer"
let khaleefa3 = "Uthman"
let khaleefa4 = "Ali"

let khilafite = [khaleefa1,khaleefa2,khaleefa3,khaleefa4]
print(khilafite)

print(khilafite[3],"ra")

var prophets : [String] = ["Mohammed", "Isa", "Musa", "Ibrahim"]
print(prophets)
prophets = prophets + ["Adam"]
print(prophets)


var developer = Array<String>()
developer += ["Muhyuddin"]
developer += ["Muzammil"]
print(developer)
developer.append("Akbar")
print(developer)


// ------------------------------------------------------ Sets ------------------------------------------------------

let colors = Set(["Red", "Green", "Blue"])
print(colors)


var present_roll = Set<Int>()
present_roll.insert(1)
present_roll.insert(1)
present_roll.insert(1)
present_roll.insert(1)
print(present_roll)
print(present_roll.count)
present_roll.insert(2)
print(present_roll)

// ----------------------------------------------------- Tuple -----------------------------------------------------

var shaheem = (first:"Shaheem",last:"PP",age:23,is_learning:true)
print(shaheem)
print(shaheem.first)
print(shaheem.age)

shaheem.age=24
print(shaheem.age)

// --------------------------------------------------- Dictionary ---------------------------------------------------

let result = [
    "CS" : 20,
    "Math" : 14
]

print(result["CS"] ?? "result unavailable")


let age : [String:Int] = [
    "Shaheem":23
]

print(age)


var active_communities = Dictionary<String,Bool>()

active_communities["SIAS"]=false

print(active_communities)
print(active_communities["SIAS"] ?? "Data Unavailable")
print(active_communities["MEC"] ?? "Data Unavailable")

// -------------------------------------------------- Enumeration --------------------------------------------------

enum Result : String{
    case success = "You won!"
    case failure
}

let mp_result = Result.failure
let ds_result = Result.success.rawValue
print(mp_result,ds_result)

enum Activity{
    case talk(topic:String)
}

let techTalk = Activity.talk(topic: "iOS")
print(techTalk)

switch techTalk {
case let .talk(topic):
    print(topic)
default:
    print("Unknown activity")
}
//This code uses pattern matching to check if the techTalk instance is the talk case of the Activity enumeration.
//If it is, it extracts the associated value topic and prints it.
//If techTalk is not the talk case, it prints "Unknown activity"
