import UIKit

// CONDITIONALS

//Turn and Talk
//What are some other examples where we make decisions in real life?

// When to wake up, what to eat, where to go for vacation...

//How about in apps or programs?

//What picture to choose, how to log in to an app, which video to watch

//Try It: Comparison Operators
//In a Swift Playground, see what returns when you run each of the following comparisons:

5 < 3
12 > 7
6 != 8
//7 == "7"

"karlie" == "karlie"
"karlie" == " karlie"
"Karlie" == "karlie"

var luckyNum = 7
luckyNum < 10
luckyNum == 7

//if Syntax
//
//Essentially, it says, “If my situation is equal to true, then do this thing!” Let’s look at this example.

//Then we provide what is called a condition. If the condition is evaluated to true, the computer looks inside the curly braces and executes any code it finds there

var dogAge = 1

if dogAge < 2 {
    print("You are a puppy 🐶")
}

//else if and else

if dogAge < 2 {
    print("You are a puppy 🐶")
}
else if dogAge > 12 {
    print("You are elderly 💗")
}
else {
    print("You are also awesome 🐾")
}

//Try It: Control Flow

//1. Create a variable named favoriteFood and assign it to a string of your favorite food
var favoriteFood = "Starbucks"

//2. Write an if statement comparing your favorite to 'Chipotle', which if evaluates to true, prints out a sentence (you choose!)

if favoriteFood == "Chipotle" {
    print("Great choice!")
}

//3. Write an else if statement comparing your favorite to 'Starbucks', which if evaluated to true, prints out a sentence (you choose!)

else if favoriteFood == "Starbucks" {
    print("Coffee is yummy!")
}

//4. Write another else if - you choose what you compare it to.

else if favoriteFood == "Wendys" {
    print("Only eat once a week!")
}

//5. Write an else statement that prints out a sentence of your choice
    
else {
    print("We can agree to disagree")
}

//6. Try changing your favoriteFood to Chipotle, then Starbucks (if it wasn't already). Do you get what you expected?

//Part 1 - Do you already have an account?

//You're working on building the next facebook. The app needs to have that screen that asks someone to either login or create an account.

//Starting with the variable var hasAccount = false, write a conditional that prints either "Please log in!" or "Let's get some information to create an account for you.". Make sure it's working as expected. Change the value of your variable to true and you should see the other sentence print.

var hasAccount = false
if hasAccount == true {
    print("Please log in!")
}
else if hasAccount != true {
    print("Let's get some information to create an account for you.")
}

//Part 2 - Which School?

//Write a conditional that tells a student if they are in elementary, middle, or high school based on their grade level.

var gradeLevel = 9
if gradeLevel <= 5 {
    print("You are in elementary school.")
}
else if (gradeLevel > 5 && gradeLevel <= 8) {
    print("You are in middle school.")
}
else {
    print("You are in high school.")
}

//Part 3 - Journal

//What does the computer do when it sees the keyword if?
    //it know to evaluate the variable to see if it is true or false. If it is true, it carries out the code inside the if statement. If it is false, the computer moves to the next if else or else statement and follows the same process.
//What can be used to compare strings and numbers?
    // <=, >=, ==, <, >, !=
//Does == care about capitalized letters? Spaces?
    // it cares about capitalized letters but not spaces.
//What about writing/reading conditionals can be confusing?
    //understanding how to group values when using ranges of numbers.


