//
//  ViewController.swift
//  Accessing the Camera & Displaying Photos
//
//  Created by Eric Smith on 6/23/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

//Step 1a. Inherit from UIImagePickerControllerDelegate and UINavigationControllerDelegate (line 11/12)

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
//Step 2a. Create an object from UIImagePickerController class, stored in variable (line 13)
    
    // ADD THIS TO MAKE SURE newImage works!
    @IBOutlet weak var newImage: UIImageView!
    
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
//    Step 3a. Tell that object to give it’s information to this class (line 17)
        imagePicker.delegate = self
    }
    
//    Step 1b. Establish an action between the Take Selfie button and ViewController.swift
    
    @IBAction func takeSelfieTapped(_ sender: Any) {
//
//        On Line 29 in the screenshot above, we are giving the following directions: “go into the object from that UIImagePickerController, and select the sourceType of camera.”
        imagePicker.sourceType = .camera
        
//        On line 32, we are giving the following directions: “stop showing whatever you are showing, and present (show) the view where the user can see their camera!” The present function is built in, and take three arguments:
        present(imagePicker, animated: true, completion: nil)
        
    }
    
    
    @IBAction func photoLibraryTapped(_ sender: Any) {
        
        imagePicker.sourceType = .photoLibrary
        
        present(imagePicker, animated: true, completion: nil)
    }
    
   // change private to internal
    internal func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
//        Update our photo with the photo the user selected
        
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
           newImage.image = selectedImage
          
        }
    //   Go to back our ViewController so the user can see the update
        imagePicker.dismiss(animated: true, completion: nil)
        

        
    }
}

