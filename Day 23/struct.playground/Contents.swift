import UIKit

struct VolleyBall{
    let teamName : String
    var teamSize : Int
    var teamMembers : [Int : String]
    
    init(name :String, size :Int, members : [Int:String]){
        self.teamName = name
        self.teamSize = size
        self.teamMembers=members
    }
    
    
    func play(){
        print("\(teamName) plays \(teamMembers)")
    }
}

var karasuno = VolleyBall(name: "Karasuno High", size: 12, members: [1:"Daichi"])
//karasuno.teamMembers.
karasuno.play()
