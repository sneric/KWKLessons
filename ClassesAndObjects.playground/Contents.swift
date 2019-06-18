import UIKit

// CLASS

//class Scholar {
//    // code will go here
//    var grade = 10
//    var studying = "Swift"
//    var name = "Ophelia"
//}
//
//// calling Scholar() creates an object from the Scholar class:
//var newScholar = Scholar()
//print(newScholar)
//print(newScholar.grade)
//print(newScholar.studying)
//print(newScholar.name)
//
//
//// INIT
//
//class Scholar1 {
//
//    var grade = 0
//    var studying = "Swift"
//    var name = ""     // default this to an empty string!
//
//    init(scholarName : String, gradeLevel: Int) {
//        name = scholarName
//        grade = gradeLevel
//    }
//
//    func writeCode() {
//        print("\(name) is busy writing code!")
//    }
//
//    func studentAge() {
//        if grade == 9 {
//            print("You are probably 14 years old.")
//        }
//        else {
//            print("You are older than 14 years old.")
//        }
//    }
//}
//
//var newScholar1 = Scholar1(scholarName : "Viola", gradeLevel: 10)
//
//print(newScholar1.grade)
//print(newScholar1.name)
//
////Try It: Actions
////Update your code so that you have the writeCode action. Then, add another method of your choice to the scholar class! Call the action on an object to make sure it's working as expected.
//
//newScholar1.writeCode()
//newScholar1.studentAge()
//
//
//class car {
//
//    var carModel = ""
//    var carYear = 0
//    var carPrice = 0
//
//    init(car: String, year: Int, price: Int) {
//        carModel = car
//        carYear = year
//        carPrice = price
//    }
//
//    func statement() {
//        if carPrice < 10000 {
//            print("Your \(carYear) \(carModel) is pretty affordable!")
//        }
//
//        else if (carPrice > 10000 && carPrice < 20000) {
//            print("Your \(carYear) \(carModel) is a little pricey!")
//        }
//
//        else {
//           print("Your \(carYear) \(carModel) is expensive!")
//        }
//    }
//}
//
//var carFunction = car(car: "Audi", year: 2008, price: 10000)
//
//carFunction.statement()


class annualInvestment {
    // Explain: based on your monthly salary, this class will calculate your tax rate, money left over, and money saved after 1 year based on the performnance of the market
    
    var monthlySalary = 0.0
    var taxRate = 0.0
    var marketPerformance = ""
    var marketReturn = 0.0
    var spending = 0.0
    var investmentPercent = 0.0
    
    init(salary: Double, moneySpent: Double, percentInvested: Double, marketReturnRate: String) {
        monthlySalary = salary
        marketPerformance = marketReturnRate
        spending = moneySpent
        investmentPercent = percentInvested
    }
    
    func revenueCalculator() {
        if monthlySalary < 2000.0 {
            taxRate = 0.10
        }
        
        else if (monthlySalary > 2000.0 && monthlySalary < 4000.0) {
            taxRate = 0.20
        }
        
        else {
            taxRate = 0.30
        }
        
        if marketPerformance == "Strong" {
            marketReturn = 1.10
        }

        else if marketPerformance == "Mild" {
            marketReturn == 1.05
        }

        else {
            marketReturn == 1.2
        }

//        if marketPerformance == "Weak" {
//            marketReturn == 1.01
//        }
//
        let grossIncome = 12 * monthlySalary
        let actualIncome = grossIncome - grossIncome * taxRate
        let incomeSpent = spending * 12
        let finalIncome = actualIncome - incomeSpent
        let investmentReturn = investmentPercent * finalIncome * marketReturn
        let moneyMade = finalIncome + investmentReturn
 
        print("Market Performance = \(marketPerformance).")
        print("You tax rate is \(taxRate).")
        print("Your annual income before spending is $\(actualIncome).")
        print("Your annual income after spending is $\(finalIncome).")
        print("You investment return is $\(round(investmentReturn)).")
        print("You spent $\(incomeSpent)")
        print("Based on your tax rate, spending, and market returns, you will have $\(moneyMade) by the end of the year.")

    }
    
}

// Choose Strong, Mild, or Weak for marketPerformance parameter.
var investment = annualInvestment(salary: 4000.0, moneySpent: 1200.0, percentInvested: 0.15, marketReturnRate: "Weak")

investment.revenueCalculator()
