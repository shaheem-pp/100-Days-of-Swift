class Dragon : Enemy{
    
    override func move() {
        fly()
    }
    
    func fly(){
        print("fly")
    }
    
    func speak(msg : String){
        print(msg)
    }
    
    override func attack() {
        super.attack()
        print("Spits fire and 20 damage")
    }
}
