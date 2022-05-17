import UIKit

struct Sport{
    var name : String
    var players : Int
    var isOlympicGame : Bool
    var olympicGame : String {
        if isOlympicGame{
            return ("\(name) is an Olympic Game")
        } else {
            return ("\(name) is not an Olympic Game")
        }
    }
}

var volleyBall = Sport(name : "VolleyBall", players : 6, isOlympicGame: true)
print(volleyBall)
print(volleyBall.name, volleyBall.players, "membered game.", volleyBall.olympicGame)


struct gameScoreBoard{
    var gameName : String
    var team1Name : String
    var team2Name : String
    var team1Score : Int {
        didSet{
            print("\(team1Name) scores \(team1Score) agiainst \(team2Name)")
        }
    }
    var team2Score : Int {
        didSet{
            print("\(team2Name) scores \(team2Score) agiainst \(team1Name)")
        }
    }
}

var volleyBallScoreBoard = gameScoreBoard(gameName: "volleyBall", team1Name: "Fukurodani", team2Name: "Nekoma", team1Score: 0, team2Score: 0)
volleyBallScoreBoard.team1Score+=1
volleyBallScoreBoard.team2Score+=1
volleyBallScoreBoard.team2Score+=1
volleyBallScoreBoard.team1Score+=1
volleyBallScoreBoard.team1Score+=1



struct MCU{
    var characterName : String
    var power : String
    var currentMission : String
    func saveWorld(){
        print(characterName, "saved Earth 616 with his",power, "power")
    }
    mutating func changeMission(){
        currentMission = "No Current Mission!"
    }
}

var captainAmerica = MCU(characterName: "Steve Rogers aka Captain America", power: "Super Soldier", currentMission: "Save Earth from Thanos")

// swift won't let you change data inside using a function, so we have to use mutating func to do any changes to a var
captainAmerica.saveWorld()

print(captainAmerica.currentMission)
captainAmerica.changeMission()
print(captainAmerica.currentMission)


//----------------------String----------------------

let string = "Karasuno will represent Miyagi Prefecture at the National High School Volleyball Championship, Tokyo 2013."

print(string.count)
print(string.hasPrefix("will"))
print(string.uppercased())
print(string.sorted())


//----------------------Array----------------------

var animals = ["Flying Bison"]
animals.append("Winged Lemur")
animals.append("Polar Bear Dog")
animals.append("Elephant Koi Fish")
print(animals)
print(animals.sorted())
print(animals.firstIndex(of: "Polar Bear Dog") ?? "Not Found")
animals.remove(at: 3)
print(animals)


//----------------------initializer----------------------

struct User{
    var userName : String {
        didSet{
            print("\nUser created succesfully!")
        }
    }
    init(){
        userName="Anonymous"
        print("Enter a Username")
    }
}

var myUser = User()
myUser.userName = "the.codeholic"

struct Player{
    var name : String
    init(name:String, game:String){
        self.name = name
        print("Player's name is \(name) who plays \(game)!")
    }
}

var messi = Player(name: "Lionel Andreas Messi", game: "Football")


struct FamilyTree {
    init() {
        print("Creating family tree!")
    }
}

struct Person {
    var name: String
    lazy var familyTree = FamilyTree()

    init(name: String) {
        self.name = name
    }
}

var eddy = Person(name: "Eddy")
// familytree struct wont be run unless or untill it is called
eddy.familyTree



struct Student {
    static var classSize = 0
    var name: String

    init(name: String) {
        self.name = name
        Student.classSize += 1
    }
}
let ed = Student(name: "Ed")
let taylor = Student(name: "Taylor")
print(Student.classSize)



struct PersonPrivate {
    private var id: String

    init(id: String) {
        self.id = id
    }
    
    func identify() -> String {
            return "My social security number is \(id)"
        }
}

let edward = PersonPrivate(id: "12345")
let edID = edward.identify()
print(edID)
