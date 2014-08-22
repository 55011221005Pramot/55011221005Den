let posssibleTipsInferred = [0.15,0.18,0.20]
let possibleTipsExplicit:[Double] = [0.15,0.18,0.20]
var numberOfItems = possibleTipsInferred.count

let apples = shoppingList.removeLast()
//the last item the array has just been removed
//shoppingList now contains 5 items, and no apples
//the apples constat is now equal to the removed "Apples" string

let mapleSyrup = shoppingList.removeAtIndex(0)
//the item that was at index 0 has just been removed
//shoppingList now contains 6 items, and no Maple Syrup
//the mapleSyrup contant is now equal to the removed "Maple Syrup" string


let array: Array<Int> = [1,2,3,4]
let dictionary: Dictionary<String, Int> = ["dog":1, "elephent": 2]


var airports:[String: String] = ["TYO": "Tokyo", "DUB": "Dublin"]

if  airports.isEmpty{
    println("The airports dictionary is empty.")
} else {
    println("The airports dictionary is not empty.")
}
// prints "the airports dictionary is not empty."

println(The airports dictionary contains \(airports.count) items.")
    //  prints "The airports dictionary contains 2 items."
    
    airports["LHR"] = "London"
    // the airports dictionary now contains 3 items
    
    
    
    airports["LHR"] = "London Heathrow"
    //the value for "LHR" has been changed to "London Heathow"
    
    
if let oldValue = airports.updateValue("Dublin International", forKey: "DUB"){
    println("The old value for DUB was \(oldValue).")
}
// prints "The old value for DUB was Dublin."


airports[APL"] = "Apple International"
    //
    airports["APL"] = nil
    //
    
if  let removedValue = airports.removeValueForKey("DUB") {
    println("The removed airport's name is \(removedValue).")
} else {
    println("The airports dictionary dose not contain a value for DUB.")
}
//


