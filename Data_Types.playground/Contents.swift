
import UIKit

// We use variables to store information that we’re going to use in our programs.

var camp = "Kode With Klossy 2019!"

camp = "Kode With Klossy 2020!"

//If we want to store information that we know will NEVER change, use the let keyword to declare a constant.

let name1 = "Sarah"

//variables declared without being assigned a value.

var team : String

//Interpolation allows us to put variables and strings together

var age = 15

"I am \(age) years old."

//String values can be added together (or concatenated) with the addition operator (+) to create a new String value, can use interpolation with the \() syntax:

var age1 = "10"
var age2 = "12"

var friend_ages1 = "Bob is \(age1) years old and Sarah is \(age2)"
var friend_ages2 = "Bob is " + age1 + " years old and Sarah is " + age2 + " years old."

//To print values to the console, Swift gives us a handy print() function

print("Hello World!")

//Try It: Strings
//If you have the strings "Karlie" and "Kloss" in the following variables:

var first = "Karlie"
var last = "Kloss"

//Use only the "string interpolation" technique to complete the following:

//1. What code can you write to output the string "KarlieKloss"?
print(first + last)

//2. What code can you write to output the string "KlossKarlie"?
print(last + first)

//3. What code can you write to output the string "Karlie Kloss"?
print(first + " " + last)

//4. What code can you write to output the string "Kloss Karlie Kloss Karlie"?
print(last + " " + first + " " + last + " " + first)

//5. What code can you write to output the string "I love Karlie"?
print("I love \(first)")

//NUMBERS

//var integer = 4
//var double = 5.0

//integer * double --> ERROR
//Double(integer) * double --> 20.0

//Try It: Numbers
//Start with these variables:

var a = 12
var b = 65
var c = 31
var d = 98

//1. Write code to find the average of these four numbers.
var var_array = [a, b, c, d]
var average = (a + b + c + d)/var_array.count

//2. Find the average yourself using paper or a calculator. Is your answer different than you found with Swift? Why?

//3. Say you have the operation a + b * c / d. What result do you get out from Swift? What other outputs can you get out by adding one or more pairs of parentheses to the equation?
var math1 = a + b * c / d
var math2 = (a + b * c) / d

//Part 1: Variable or Constant?
//For each item on the list, determine if it should be stored as a variable or constant. Be ready to explain your thinking.

//name - constant
//address - variable
//birthday - constant
//gradeLevel - variable
//age - variable
//eyeColor - constant
//favoriteColor - constant

//Part 2: How Much Do I Get Paid?
//Find the answer to this problem using Swift:
//Karina earns $10.25 per hour at her job at Express. If she worked 20 hours last week, how much should she get paid?

var hourly_rate : Double
var hours_worked_weekly : Double
hourly_rate = 10.25
hours_worked_weekly = 20.0

var paid = hourly_rate * hours_worked_weekly

"Karina will make \(Int(paid)) per week."

//Part 3: Happy Birthday
//Let's sing Happy Birthday to our favorite celebrity. Their name should be stored in a variable, just in case you want to sing to someone else.
var celeb_name = "Karlie"
print("Happy birthday to you \nHappy brithday to you \nHappy birthday to \(celeb_name) \nHappy to you!")

//Extension: String Compression
//There's a silly compression algorithm that outputs the first letter, the number of letters in the middle, and the last letter. So for the string Klossy it'd output K4y or Scholar would be S5r.
//Can you write code to implement that?

var name = "Klossy"

var silly_algorithm1 = "\(name.first!)\(String(name.count - 2))\(name.last!)"

var silly_algorithm2 = "\(name.first!)" + String(name.count - 2) + "\(name.last!)"

func silly_algorithm3 (word: String) {
    let first_letter = word.first!
    let last_letter = word.last!
    let letter_count = String(word.count - 2)
    print("\(first_letter)\(letter_count)\(last_letter)")
}

silly_algorithm3(word: "Leopold")
