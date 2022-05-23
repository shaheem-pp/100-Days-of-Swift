import UIKit

class Person{
    var name : String
    var age : Int
    
    init(name:String, age:Int){
        self.name = name
        self.age = age
        print("Hello \(self.name), you are \(self.age) years old.")
    }
}

let sam = Person(name: "Sam", age: 32)


class Dog {
    var name: String
    var breed: String

    init(name: String, breed: String) {
        self.name = name
        self.breed = breed
    }
}
class Poodle: Dog {
    init(name: String) {
        super.init(name: name, breed: "Poodle")
    }
}

var myDog = Poodle(name: "Tommy")
print(myDog.name)
print(myDog.breed)


class Chef{
    func makeDish(){
        print("Chef making Dish")
    }
}

class ItalianChef : Chef{
    override func makeDish() {
        print("Italian Chef makes Italian Pizza")
    }
}


var myChef = Chef()
myChef.makeDish()

var myItalianChef = ItalianChef()
myItalianChef.makeDish()

//when you declare a class as being final, no other class can inherit from it


class Singer {
    var name = "Taylor Swift"
}

var singer = Singer()
print(singer.name)

var singerCopy = singer
singerCopy.name = "Justin Bieber"

print(singer.name)


class Person2 {
    var name = "John Doe"

    init() {
        print("\(name) is alive!")
    }

    func printGreeting() {
        print("Hello, I'm \(name)")
    }
    
    deinit {
        print("\(name) is no more!")
    }
}

for _ in 1...3 {
    let person2 = Person2()
    person2.printGreeting()
}


class Singer2 {
    var name = "Taylor Swift"
}

let taylor = Singer2()
taylor.name = "Ed Sheeran"
print(taylor.name)
