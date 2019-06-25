//
//  ViewController.swift
//  Emojional
//
//  Created by Eric Smith on 6/24/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // iteration 1
    @IBAction func showMessages(sender: UIButton) {
        // in as much detail as possible
        // pseudo-code the things that need to happen
        // when a user clicks an emoji button
        
        //user clicks on emoji, then an alert pops up with a message related to the emoji.
        
        let alertController = UIAlertController(title: "OK", message: "It's gonna be alright!", preferredStyle: UIAlertController.Style.alert)
        
        alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler: nil))
        
        present(alertController, animated: true, completion: nil)
    }
}

