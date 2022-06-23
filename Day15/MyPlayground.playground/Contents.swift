import UIKit

struct Person {
    var clothes: String{
        willSet {
            updateUI(msg: "I'm changing from \(clothes) to \(newValue)")
        }

        didSet {
            updateUI(msg: "I just changed from \(oldValue) to \(clothes)")
        }
    }
    var shoes: String

    func describe() {
        print("I like wearing \(clothes) with \(shoes)")
    }
    
}

var taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
taylor.describe()
other.describe()
func updateUI(msg: String) {
    print(msg)
}
taylor.clothes = "short skirts"



struct TaylorFan {
    static var favoriteSong = "Look What You Made Me Do"

    var name: String
    var age: Int
}

let fan = TaylorFan(name: "James", age: 25)
print(TaylorFan.favoriteSong)


class Album {
    var name: String

    init(name: String) {
        self.name = name
    }
    func getPerformance() -> String {
            return "The album \(name) sold lots"
    }
}

class StudioAlbum: Album {
    var studio: String

    init(name: String, studio: String) {
        self.studio = studio
        super.init(name: name)
    }
}

class LiveAlbum: Album {
    var location: String

    init(name: String, location: String) {
        self.location = location
        super.init(name: name)
    }
}
var taylorSwift = StudioAlbum(name: "Taylor Swift", studio: "The Castles Studios")
var fearless = StudioAlbum(name: "Speak Now", studio: "Aimeeland Studio")
var iTunesLive = LiveAlbum(name: "iTunes Live from SoHo", location: "New York")
var allAlbums: [Album] = [taylorSwift, fearless, iTunesLive]
for album in allAlbums {
    print(album.getPerformance())
}




protocol Employee {
    var name: String { get set }
    var jobTitle: String { get set }
    func doWork()
}
struct Executive: Employee {
    var name = "Steve Jobs"
    var jobTitle = "CEO"

    func doWork() {
        print("I'm strategizing!")
    }
}

struct Manager: Employee {
    var name = "Maurice Moss"
    var jobTitle = "Head of IT"

    func doWork() {
        print("I'm turning it off and on again.")
    }
}
let staff: [any Employee] = [Executive(), Manager()]

for person in staff {
    person.doWork()
}

var myInt = 0
extension Int {
    func plusOne() -> Int {
        return self + 1
    }
    func clamp(low: Int, high: Int) -> Int {
           if self > high {
               // if we are higher than the upper bound, return the upper bound
               return high
           } else if self < low {
               // if we are lower than the lower bound, return the lower bound
               return low
           }

           // we are inside the range, so return our value
           return self
    }
}
myInt.plusOne()
let i: Int = 8
print(i.clamp(low: 0, high: 5))

