import UIKit
//functions

let myString = "The quick brown fox jumps over the lazy dog"

func countString(myString : String){
    print("The String \"\(myString)\" has \(myString.count) letters")
}

countString(myString: myString)
countString(myString: "Hello World!")

func haikyuugame(against : String , isWin : Bool) -> String {
    if (isWin == true){
        return "Karasuno won against \(against)"
    }else{
        return "Karasuno failed against \(against)"
    }
}

let agianstJohzenji = haikyuugame(against : "Johzenji", isWin : true)
let agianstAobaJosai = haikyuugame(against : "Aoba Josai", isWin : false)

print(agianstJohzenji+"\n"+agianstAobaJosai)

 
func getHaterStatus(weather: String) -> String? {
    if weather == "sunny" {
        return nil
    } else {
        return "Hate"
    }
}
var status = getHaterStatus(weather: "rainy")
print(status)


func yearAlbumReleased(name: String) -> Int {
    if name == "Taylor Swift" { return 2006 }
    if name == "Fearless" { return 2008 }
    if name == "Speak Now" { return 2010 }
    if name == "Red" { return 2012 }
    if name == "1989" { return 2014 }

    return 0
}
var items = ["James", "John", "Sally"]
func position(of string: String, in array: [String]) -> Int {
    for i in 0..<array.count {
        if array[i] == string {
            return i
        }
    }

    return 0
}

