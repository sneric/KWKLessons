import UIKit

//Arrays
//Arrays are useful whenever you need to keep track of an ordered list of things. This is similar to how we keep track of lists in the real world.

//Initialize an empty array

var arrayOfStrings = [String]()
var arrayOfIntegers = [Int]()

//Accessing Array index

var friendsOfKarlie = ["Michelle Obama", "Serena Williams", "T Swift", "Jimmy Fallon"]

friendsOfKarlie[0]

// update a piece of the array

friendsOfKarlie[2] = "Josh Kushner"

//Add information to the array

friendsOfKarlie.append("Jay Z")

//Remove information from the array

friendsOfKarlie.remove(at: 3)

//Try It: Creating Arrays and Accessing Data
//Create an array of 3 of your role models and/or friends, and store it in a variable. Then, take these steps:

var friends = ["John", "Maggie", "Rebecca"]

//Access the second person using [] notation

friends[1]

//Add another person to the list

friends.append("Robert")

//Change one of the people

friends[0] = "Rachel"

//Remove the person from the array

friends.remove(at: 3)

//Iterating Over Elements in an Array Example

var friendsOfKarlie1 = ["Michelle Obama", "Serena Williams", "T Swift", "Jimmy Fallon"]

for friend in friendsOfKarlie1 {
    print("👋 Hello \(friend)!")
}

//Practice: Arrays

//Part 1: Hobbies

//Create an array of your top five favorite hobbies

var hobbies = ["Skiing", "Yoga", "Cooking", "Drumming", "Swimming"]

//Change at least one of the values in the array

hobbies[0] = "Scuba Diving"

//Add a new hobby to the array

hobbies.append("Sledding")

//Remove the second hobby from the array

hobbies.remove(at: 1)

//Print the value of the third element of the array

print(hobbies[2])
print(hobbies)
//You should have five hobbies in your array. Using a for-in loop and string interpolation, iterate over the values in your array in order to print five strings that say "I love ______!"

for hobby in hobbies {
    print("I love \(hobby)")
}

//// DICTIONARIES
//Try It: Array or Dictionary?
//For each set of data, would an array or dictionary be better to store it? Why?

//List of all of the students in class - array
//List of states and their capitals - dictionary
//List of things to pack for vacation - array
//Names of all the Instagram accounts I follow - array
//List of students and their birthdays - dictionary

//Try It: Creating and Accessing Dictionaries
//Create a dictionary with a list of 3 people (yourself, family, friends, or other students here!) and their birthdays.
//Use print() statements to verify your syntax is correct.

var people1 : [String : String] = [:]

people1 = [
    "Eric" : "December 13",
    "Maggi" : "August 2",
    "Madeleine" : "June 30"
    ]
print(people1)

var people2 : [String : String] = [:]

people2["Apple"] = "Green"
people2["Banana"] = "Yellow"
people2["Orange"] = "Orange"
print(people2)

//To tell Swift we are sure there is data, we do something called unwrapping - by typing an exclamation point after the closing bracket.

print(people2["Apple"]!)
print(people2["Orange"]!)

//Set value to nil
people2["Banana"]
people2["Banana"] = nil
//print(people2["Banana"]!)

print(people2.keys)
print(Array(people2.keys))


//Practice: Dictionaries
//Friend/Family Tree
//Create a dictionary with keys that are family or friend titles (i.e. "sister", "bestFriend") and values that are the name of that family member or friend. Pets are family, too!

//Aim to have at least 10 family members of friends in your 'tree'
//Print to the console the entire dictionary

var family : [String : String] = [:]

family = [
    "Sister" : "Madeleine",
    "Mom" : "Suzanne",
    "Dad" : "Tom",
    "Uncle" : "Richard",
    "Aunt1" : "Michelle",
    "Aunt2" : "Deb",
    "Grandfather" : "Richard",
    "Cousin1" : "Will",
    "Cousin2" : "Thomas",
    "Cousin3" : "Andrew"
    
]

print(family)

//Print to the console 3 individual names

print(family["Sister"]!)
print(family["Mom"]!)
print(family["Dad"]!)

//Remove someone from your tree 😔 (You can add them back if you want!)

family["Uncle"] = nil
print(family)

//Extension: Nested Collections
//Create a dictionary in which the keys are strings and the values are arrays of strings. This is called a _nested_ collection, because it has collections inside of a collection.
//
//Need ideas for topics?
//
//    Re-write your family tree with arrays (it's ok to only have 1 item in some arrays). This will make keeping track of cousins easier in some cases!
//    Keys: dogs, cats, dinosaurs. Values: ["German Shepard", "Shih-Tzu", "Great Dane"], etc.
