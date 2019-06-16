//
//  TheNameOfYourClass.swift
//  ClassesAndObjects
//
//  Created by Eric Smith on 6/15/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import Foundation

class Scholar1 {
    
    var grade = 0
    var studying = "Swift"
    var name = ""     // default this to an empty string!
    
    init(scholarName : String, gradeLevel: Int) {
        name = scholarName
        grade = gradeLevel
    }
    
    func writeCode() {
        print("\(name) is busy writing code!")
    }
    
    func studentAge() {
        if grade == 9 {
            print("You are probably 14 years old.")
        }
        else {
            print("You are older than 14 years old.")
        }
    }
}

var newScholar1 = Scholar1(scholarName : "Viola", gradeLevel: 10)

