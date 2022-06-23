import UIKit

// Closure Part 1


let greeting = { (name: String, number: Int) in
    if(number == 13 || number == 14){
        print("Welcome to Karasuno Volleyball Club, \(name)!")
    }else{
        print("Welcome to Karasuno Volleyball Club, \(name)!")
        print("Your Jersey Number is \(number)\n")
    }
    
}

var players = ["Daichi", "Sugawara", "Asahi", "Nishinoya", "Tanaka", "Ennoshita", "Kinnoshita", "Narita", "Kageyama", "Hinata", "Tsukishima", "Yamaguchi", "Kiyoko", "Yachi"]

for i in 0..<14{
    greeting(players[i], i+1)
}

print()


let playingAgainst = { (teamName : String) -> String in
    return "Karasuno is going to play against \(teamName)!"
}

let teamName = "Nekoma"
let againstMessage = playingAgainst(teamName)
print(againstMessage)



let karasunoTeam = {
    for i in 0...11{
        print("\(i+1). ",players[i])
    }
}

//the parameter type as () -> Void. That means “accepts no parameters, and returns Void” – Swift’s way of saying “nothing”.

func karasunoPlays(teamMembers:()->Void){
    print("Karasuno Team")
    teamMembers()
    print("will play against \(teamName)!")
    
}

karasunoPlays(teamMembers: karasunoTeam)

print()

karasunoPlays {
    karasunoTeam()
}

//------------------------------------------------
//------------------------------------------------
//------------------------------------------------

func travel(action: (String) -> Void) {
    print("I'm getting ready to go.")
    action("London")
    print("I arrived!")
}

travel { (place: String) in
    print("I'm going to \(place) in my car")
}

//----------------Not Clear----------------

func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}


func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}

travel {
    "I'm going to \($0) at \($1) miles per hour."
}

//----------------Not Clear----------------


