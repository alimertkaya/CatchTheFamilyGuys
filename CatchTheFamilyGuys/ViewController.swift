//
//  ViewController.swift
//  CatchTheFamilyGuys
//
//  Created by Ali Mert Kaya on 13.04.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    var images = ["peter","lois","chris","stewie","brian"]
    var imageName = ["Peter","Lois","Chris","Stewie","Brian"]
    var counter = 0
    var selectedImage: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.image = UIImage(named: images[counter])
        nameLabel.text = imageName[counter]
        selectedImage = imageView.image
        counter += 1
    }
    
    @IBAction func changeClicked(_ sender: UIButton) {
        if images.count > counter {
            imageView.image = UIImage(named: images[counter])
            nameLabel.text = imageName[counter]
            counter += 1
            selectedImage = imageView.image
        }
        else {
            counter = 0
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toGameVC" {
            let destinationVC = segue.destination as! GameViewController
            destinationVC.selectedImage1 = selectedImage
            destinationVC.selectedImage2 = selectedImage
            destinationVC.selectedImage3 = selectedImage
            destinationVC.selectedImage4 = selectedImage
            destinationVC.selectedImage5 = selectedImage
            destinationVC.selectedImage6 = selectedImage
            destinationVC.selectedImage7 = selectedImage
            destinationVC.selectedImage8 = selectedImage
            destinationVC.selectedImage9 = selectedImage
        }
    }
}
