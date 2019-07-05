//
//  PhotoDetailViewController.swift
//  ViewFinder
//
//  Created by Eric Smith on 7/5/19.
//  Copyright © 2019 Eric Smith. All rights reserved.
//

import UIKit

    class PhotoDetailViewController: UIViewController {
    // iteration 3

        @IBOutlet weak var photoView: UIImageView!
      // iteration 3
        var photo : Photos? = nil

        override func viewDidLoad() {
            super.viewDidLoad()
     // iteration 3
            if let realPhoto = photo {
                title = realPhoto.caption
                
                if let cellPhotoImageData = realPhoto.imageData {
                    if let cellPhotoImage = UIImage(data: cellPhotoImageData) {
                  // iteration 3 - chnge to photoView
                        photoView.image = cellPhotoImage
                    }
                    
                }
            }
            // Do any additional setup after loading the view.
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
