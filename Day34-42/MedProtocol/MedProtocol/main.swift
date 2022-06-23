protocol AdvancedLifeSupport{
    func performCPR()
}


class EmergencyCallHandler{
    
    var delegate : AdvancedLifeSupport?
    
    func assesSituation(){
        print("Assessing")
    }
    
    func medicalEmergency(){
        print("Emergancy contacted")
        delegate?.performCPR()
    }
    
}

struct Paramedic : AdvancedLifeSupport{
    
    init(handler : EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("Paramedic perform CPR")
    }
    
}

class Doctor : AdvancedLifeSupport {
    
    init(handler : EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("Doctor CPR")
    }
    
}

class Surgeon : Doctor{
    
    override func performCPR() {
        print("Surgeon CPR")
    }
    
}


var amilio = EmergencyCallHandler()
amilio.assesSituation()

var angela = Doctor(handler: amilio)
angela.performCPR()

var tim = Surgeon(handler: amilio)
tim.performCPR()

var ginny = Paramedic(handler: amilio)
angela.performCPR()

amilio.medicalEmergency()
