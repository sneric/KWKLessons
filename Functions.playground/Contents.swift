import UIKit

func walkDog() {
    // steps
    // go
    // here
    print("1. Put leash on dog.")
    print("2. Take dog outside.")
    print("3. Walk dog around build.")
    print("4. Go back inside apartment.")
    print("5. Take collar off dog.")
}

//Call function
walkDog()

//Try It: Writing Your Own Functions
//Write two more functions - one for making a bowl of cereal and the other, you pick. Each function should print out at least two statements. Verify your functions are working by calling them.

func cereal() {
    print("Put cereal into bowl")
    print("Pour milk.")
    print("Eat it.")
}

cereal()

// Function Arguments

func walkDog(numberOfDogs : Int) {
    print("There are \(numberOfDogs) dogs in the house")
}

walkDog(numberOfDogs : 4)

//Try It: Arguments

//Write a function called hello that takes one argument, a string. In the code block, print out "Hello, Amy" assuming that "Amy" is the string passed in as an argument.

func hello(name: String) {
    print("Hello, \(name).")
}

hello(name: "Amy")

// Return Values

func walkDogs(numberOfDogs : Int) -> Int {
    
    return numberOfDogs
}

walkDogs(numberOfDogs : 3)

//Try It: Return Values

//Inside your walkDog function, create a lengthOfWalk variable that multiplies the number of dogs by 15. Then on the next line, return lengthOfWalk. Now run the function.

func walkDogs1(numberOfDogs : Int) -> Int {
    var lengthOfWalk = numberOfDogs * 15
    return lengthOfWalk
    return numberOfDogs
}

walkDogs1(numberOfDogs : 3)

//Explore:
//What happens if you forget to include to -> Int in your function declaration?
//What happens if you forget to use the return keyword, when you have -> Int in the declaration?

// How to use Return values example:

func walkDog2(numberOfDogs : Int) -> Int {
    let lengthOfWalk = numberOfDogs * 15
    return lengthOfWalk
}

let minutesToWalk = walkDog2(numberOfDogs : 3)
print("Please walk the dogs. I will expect to see you complete that task in \(minutesToWalk) minutes!")

// Function example

// 1. Within budget function, input salary after tax, money invested, money spent
// 2. Calculate money leftover
// 3. Calculate money saved plus interest accrued

func budget(moneyMade: Double, investmentPercentage: Double, moneySpent: Double) -> Double {
    let profit = moneyMade - moneySpent
    let investmentReturn = profit * (investmentPercentage/100.0)
    let allProfit = profit + investmentReturn
    return allProfit
}

let bankAccountValue = budget(moneyMade: 4000.0, investmentPercentage: 15.0, moneySpent: 2000.0)
print("This month, I saved $\(Int(bankAccountValue)).")
