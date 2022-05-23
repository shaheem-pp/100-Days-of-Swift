import UIKit

//
//protocol Identifiable {
////    var id: String { get set }
//
//
//    func identify() {
//        print("My ID is \(id).")
//    }
//
//
//}

//struct User: Identifiable {
//    var id: String
//}
//
//func displayID(thing: Identifiable) {
//    print("My ID is \(thing.id)")
//}

//var myName = User(id: "ABC")
//displayID(thing: myName)


protocol Payable {
    func calculateWages() -> Int
}

protocol NeedsTraining {
    func study()
}

protocol HasVacation {
    func takeVacation(days: Int)
}

protocol Employee: Payable, NeedsTraining, HasVacation { }

extension Int {
    var isEven: Bool {
            return self % 2 == 0
        }
    
    func squared() -> Int {
        return self * self
    }
}

let number = 8
number.squared()


let pythons = ["Eric", "Graham", "John", "Michael", "Terry", "Terry"]
let beatles = Set(["John", "Paul", "George", "Ringo"])

extension Collection {
    func summarize() {
        print("There are \(count) of us:")

        for name in self {
            print(name)
        }
    }
}

pythons.summarize()
beatles.summarize()




protocol Identifiable {
    var id: String { get set }
    func identify()
}

extension Identifiable {
    func identify() {
        print("My ID is \(id).")
    }
}

struct User: Identifiable {
    var id: String
}

let twostraws = User(id: "twostraws")
twostraws.identify()
