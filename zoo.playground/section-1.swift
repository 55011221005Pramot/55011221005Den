class Animal{
   
    let name:String
    let food:String
    
    var nameAnimal:[String] = ["Tiger","bird","Sheep","Monkey"]
    var foodType:[String] = ["Beef", "Rice","Corn","Banana"]
    
    init(name:String,food:String){
        self.name = name
        self.food = food
        
    }
    
    func AddNameFood() -> String{
       
        nameAnimal += name
        foodType += food
       
        return name+"  "+food
    }
    func insertName(name:String){
        
        
    }
    

}

let test = Animal(name:"Cat",food:"Grass")
test.AddNameFood()





