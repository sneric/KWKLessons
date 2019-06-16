import UIKit

// For-in loops and Arrays

var sponsors = ["adidas", "Estée Lauder", "Carolina Herrera Good Girl", "Apple", "WeWork"]

for sponsor in sponsors {
    print("Shout out to \(sponsor) for help making KWK happen!")
}

//For-in loops and Dictionaries

var capitals = ["France": "Paris", "Cuba": "Havana", "Japan": "Tokyo"]

for pair in capitals {
    print(capitals.keys)
    print(capitals.values)
}

for (country, capital) in capitals {
    print("I am in \(country), in the city of \(capital).")
}

var friends : [String] = []
friends = ["Brian", "Brad", "Andrew", "Maggi", "Sarah"]
for friend in friends {
    print("Hello, \(friend)")
}

var cityDistances : [String : String] = [:]
cityDistances = [
    "St. Louis" : "300 miles",
    "Denver" : "250 miles",
    "Los Angeles" : "350 miles"
]

for (city, distance) in cityDistances {
    print("You are currently \(distance) from \(city).")
}

for index in 0..<friends.count {
    print("You are with \(friends[index])")
}

//Practice: Loops
//Check Your Understanding
//Let's take some time to answer the following questions in our journals, and then discuss our answers together.

//What is a for-in loop (in Swift)? What does it do?
    // It repeats a command over an array, dictionary, or sequences of repetitions to carry out a task.
//What are the different ways you can use a for-in loop?
    //Do repetitive print statements, calculations over many data types
//How can for-in loops be useful? What do you think is the point of them?
//Can you brainstorm some ways that one of your favorite apps might make use of a for-in loop?
//    Modify your friends names
//    Can you use the for-in loop to edit the strings in your friends array from just their names to their names plus an exclamation point? Consider:
//
//how to access an element in an array based on its index
//how to tell your for-in loop to run for the same number of times as the length of your array
//how to assign a new value to an element in an array
//how to add strings together

for index in 0..<friends.count {
    let friends_new = (friends[index] + "!")
    print(friends_new)
}

for index in 0..<10 {
    print("Hello")
}
