//
//  ViewController.swift
//  Gesture Recognition
//
//  Created by Atıl Samancıoğlu on 27/01/2017.
//  Copyright © 2017 Atıl Samancıoğlu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    var myInteger = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(ViewController.changePicture))

        imageView.addGestureRecognizer(gestureRecognizer)
        
    }

    func changePicture() {
        
        if myInteger == 0 {
            imageView.image = UIImage(named: "kirk.jpg")
            nameLabel.text = "Kirk Hammett"
            myInteger += 1
        } else if myInteger == 1 {
            imageView.image = UIImage(named: "james.jpg")
            nameLabel.text = "James Hetfield"
            myInteger -= 1
        }
        
    }


}

