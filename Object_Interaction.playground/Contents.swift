import UIKit

// Creating Objects with Classes

// Pantry.swift

class Pantry {
    
    var walkIn = false
    var temperature = 0
  //  var contents = [String]()
    var contents = [Food]()
    
    init(pantryWalkIn : Bool, pantryTemp : Int) {
        walkIn = pantryWalkIn
        temperature = pantryTemp
    }
    
//    func addFood(food : String) {
//        contents.append(food)
//    }
    
    func addFood(food : String, calories : Int) {
        var newFood = Food(foodName: food, numberCalories: calories)
        contents.append(newFood)
    }
    
}

// Food.swift

class Food {
    
    var name = ""
    var calories = 0
    
    init(foodName : String, numberCalories : Int) {
        name = foodName
        calories = numberCalories
    }
    
}

// main.swift

//var pantry = Pantry(pantryWalkIn: true, pantryTemp: 62)
//
//print(pantry.walkIn)
//print(pantry.temperature)
//pantry.addFood(food: "Pizza")
//print(pantry.contents)

var pantry = Pantry(pantryWalkIn: true, pantryTemp: 62)

// Fix pantry.food to pantry.contents
print(pantry.contents)

pantry.addFood(food: "almond flour", calories: 100)
pantry.addFood(food: "gluten-free oats", calories: 230)
pantry.addFood(food: "mini chocolate chips", calories: 90)

// Fix pantry.food to pantry.contents
print(pantry.contents)

// Second, write a for-in loop to print out the name and calories of each food in the pantry.

for foodItem in pantry.contents {
    print("\(foodItem.name) has \(foodItem.calories) calories.")
}


//Practice: Object Interaction
//Scholars and Camps
//Your job is to build a Scholar class and a Camp class. You can choose what properties each class has on it. The Camp class should have an addCamper action on it, which creates a Scholar object and stores that in a list of all the campers.

class Camp {
    
    var camp = ""
    var scholars = [Scholar]()
    
    init(campType : String) {
        camp = campType
    }
    
    func addScholar(scholar : Scholar) {
        scholars.append(scholar)
    }
    
}

class Scholar {
    
    var name = ""
    var grade = 0
    
    init(scholarName : String, scholarGrade : Int) {
        name = scholarName
        grade = scholarGrade
    }
    
}

var amy = Scholar(scholarName: "Amy", scholarGrade: 12)
var mary = Scholar(scholarName: "Mary", scholarGrade: 11)

var swift = Camp(campType: "Swift")
swift.addScholar(scholar: amy)
swift.addScholar(scholar: mary)

for scholar in swift.scholars {
    print("\(scholar.name) is a \(swift.camp) scholar!")
}




//Extension: Camps and KWK
//Build a KWK class that creates and stores camps. The KWK class should have a year property. Make sure your camp has a location and title (WebDev or Mobile).

class Kwk {
    
    var camps = [Camp]()
    
    func addCamp(camp : Camp) {
        camps.append(camp)
    }
    
}

class Camp {
    
    var camp = ""
    var location = ""
    var scholars = [Scholar]()
    
    init(campType : String, campLocation : String) {
        camp = campType
        location = campLocation
    }
    
    func addScholar(scholar : Scholar) {
        scholars.append(scholar)
    }
    
}

class Scholar {
    
    var name = ""
    var grade = 0
    
    init(scholarName : String, scholarGrade : Int) {
        name = scholarName
        grade = scholarGrade
    }
    
}

var amy = Scholar(scholarName: "Amy", scholarGrade: 12)
var mary = Scholar(scholarName: "Mary", scholarGrade: 11)

var swift = Camp(campType: "Swift", campLocation: "Denver")
swift.addScholar(scholar: amy)
swift.addScholar(scholar: mary)

var alicia = Scholar(scholarName: "Alicia", scholarGrade: 12)
var ellen = Scholar(scholarName: "Ellen", scholarGrade: 11)

var webApps = Camp(campType: "Web Applications", campLocation: "Miami")
webApps.addScholar(scholar: alicia)
webApps.addScholar(scholar: ellen)

var kwk = Kwk()
kwk.addCamp(camp: swift)
kwk.addCamp(camp: webApps)

for camp in kwk.camps {
    print("The \(camp.location) \(camp.camp) has \(camp.scholars.count) scholars.")
}
