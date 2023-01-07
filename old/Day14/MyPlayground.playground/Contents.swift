import UIKit

struct Person {
    var clothes: String
    var shoes: String
    func describe() {
            print("I like wearing \(clothes) with \(shoes)")
        }
}
let taylor = Person(clothes: "T-shirts", shoes: "sneakers")
let other = Person(clothes: "short skirts", shoes: "high heels")
print(taylor.clothes)
print(other.shoes)
var taylorCopy = taylor
taylorCopy.shoes = "flip flops"
print(taylor)
print(taylorCopy)
taylor.describe()


class PersonClass {
    var clothes: String
    var shoes: String

    init(clothes: String, shoes: String) {
        self.clothes = clothes
        self.shoes = shoes
    }
}
class Singer {
    var name: String
    var age: Int

    init(name: String, age: Int) {
        self.name = name
        self.age = age
    }

    func sing() {
        print("La la la la")
    }
}
var taylors = Singer(name: "Taylor", age: 25)
taylors.name
taylors.age
taylors.sing()
