//
//  ViewController.swift
//  Actions & Outlets
//
//  Created by Eric Smith on 6/22/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//


//Outlet - when you want to change the appearance of something or keep track of information
//Action - when you want the code to know that a user took an action

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var appTitle1: UILabel!
      //    @IBOutlet means an outlet on the Interface Builder has been created. weak - we’ll ignore. var appTitle is a declaration of a new variable called appTitle, and var appTitle: UILabel! means the variable doesn’t have a value assigned, but holds the data type of a UILabel.
    
    
    @IBOutlet weak var appTitle2: UILabel!
    
    @IBOutlet weak var textField: UITextField!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func submitButtonTapped(_ sender: UIButton) {
    
        //code will go here
        if let newTitle = textField.text {
            appTitle1.text = newTitle
        }
    }
    
    @IBAction func submitButtonTapped2(_ sender: UIButton) {
            
        if let newTitle = textField.text {
                appTitle2.text = newTitle
        }
    }
        
    
}

