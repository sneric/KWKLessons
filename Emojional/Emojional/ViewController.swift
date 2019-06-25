//
//  ViewController.swift
//  Emojional
//
//  Created by Eric Smith on 6/24/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    // iteration 2
    let emojis = ["😃" : "Happy face", "😢" : "Sad face"]
    
    //iteration 3
    let customMessages = [
        "Happy face" : ["You have a great smile!", "Keep the good vibes goin!", "Your smile is contagious!"],
        "Sad face" : ["It's gonna be ok!", "What has got you down?", "I'm here to help."]
                ]
        
        
        
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
       
        // iteration 2
        let selectedEmotion = sender.titleLabel?.text
        
        // iteration 3
        
        let randomNumber = Int.random(in: 0 ..< 3)
        
        // iteration 3
        let emojiMessage =
        
        // here I want to extract the word that goes with my emoji
        // then find that word in the dictionary
        // get it's value (array)
        // and access the first element
        
        customMessages[emojis[selectedEmotion!]!]?[randomNumber]
        
        //iteration 3 - another way to create function for random number generator
//
//        let emotionArray = customMessages[emojis[selectedEmotion!]!]
//        let random = Int.random(in: 0 ..< emotionArray!.count)
//        let emojiMessage = emotionArray?[random]
        
        // iteration 1 & 2 & 3
        let alertController = UIAlertController(title: "Your Emojional Message", message: emojiMessage, preferredStyle: UIAlertController.Style.alert)
      
        // iteration 1
        alertController.addAction(UIAlertAction(title: "OK", style:UIAlertAction.Style.default, handler: nil))
       
        // iteration 1
        present(alertController, animated: true, completion: nil)
    }
}

