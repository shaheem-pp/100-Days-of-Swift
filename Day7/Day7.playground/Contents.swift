import UIKit

let karasunoPlayers = ["Daichi ", "Sugawara", "Asahi", "Nishinoya", "Tanaka", "Ennoshita", "Kinnoshita", "Narita", "Kageyama", "Hinata","Tsukishima", "Yamaguchi"]

let playingMessage = {
    for i in 0...12{
        print("\(i+1). \(karasunoPlayers[i])")
    }
}



func playingStatus(oppositeTeam : (String) -> (Void)){
    print("Next: Karasuno ", terminator: "")
    oppositeTeam("Nekoma")
}

playingStatus{ (oppositeTeam : String) in
    print("plays aginst \(oppositeTeam)")
}


func travel(action: (String) -> String) {
    print("I'm getting ready to go.")
    let description = action("London")
    print(description)
    print("I arrived!")
}

travel { (place: String) -> String in
    return "I'm going to \(place) in my car"
}

print()


travel {
    "I'm going to \($0) in my car"
}


print()


func travel(action: (String, Int) -> String) {
    print("I'm getting ready to go.")
    let description = action("London", 60)
    print(description)
    print("I arrived!")
}
travel {
    "I'm going to \($0) at \($1) miles per hour."
}

print()


func travel() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

print()
print()
print()
print()
let result = travel()
result("London")

print()
let result2 = travel()("London")


print()
func travel2() -> (String) -> Void {
    return {
        print("I'm going to \($0)")
    }
}

print()
let result3 = travel2()
result("London")


print()

func travel3() -> (String) -> Void {
    var counter = 1

    return {
        print("\(counter). I'm going to \($0)")
        counter += 1
    }
}
print()
result3("London")
result3("London")
result3("London")


//You can assign closures to variables, then call them later on.
//Closures can accept parameters and return values, like regular functions.
//You can pass closures into functions as parameters, and those closures can have parameters of their own and a return value.
//If the last parameter to your function is a closure, you can use trailing closure syntax.
//Swift automatically provides shorthand parameter names like $0 and $1, but not everyone uses them.
//If you use external values inside your closures, they will be captured so the closure can refer to them later.
