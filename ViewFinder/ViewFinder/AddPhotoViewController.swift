//
//  AddPhotoViewController.swift
//  ViewFinder
//
//  Created by Eric Smith on 7/4/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

// iteration 1
class AddPhotoViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

 // iteration 1
    @IBOutlet weak var newImage: UIImageView!
      // iteration 1
    @IBOutlet weak var captionText: UITextField!
    // iteration 1
    
    var imagePicker = UIImagePickerController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
 // iteration 1
        imagePicker.delegate = self

        // Do any additional setup after loading the view.
    }
      // iteration 1
    @IBAction func cameraTapped(_ sender: Any) {
        imagePicker.sourceType = .camera
        // iteration 1
        present(imagePicker, animated: true, completion: nil)
        
    }
      // iteration 1
    @IBAction func photoLibraryTapped(_ sender: Any) {
      // iteration 1
        imagePicker.sourceType = .photoLibrary
        present(imagePicker, animated: true, completion: nil)
    }
      // iteration 1
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        // iteration 1
        if let selectedImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
            newImage.image = selectedImage
        }
        // iteration 1
        imagePicker.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
