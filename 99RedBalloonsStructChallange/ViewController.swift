//
//  ViewController.swift
//  99RedBalloonsStructChallange
//
//  Created by Hans Sterken on 09-10-14.
//  Copyright (c) 2014 Hans Sterken. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myBalloonsLabel: UILabel!
    var myBalloons : [balloon] = []
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        //  create a function that creates 99 balloons and randomly assigns one of the 4 images to the created Balloon instance. Use a switch statement to assign each of the four Balloon images. Add these all to an array property in the ViewController.
        
        // create an array with 99 balloons
        create99Balloons()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextBalloonBarButtonPressed(sender: UIBarButtonItem) {
        
        // Update the balloonsLabel with the number of the Balloon.
        // Update the imageView with the Balloon instances image.
        
        
        //generate random number between 0 and myballoons.count
        var randomNumber = Int(arc4random_uniform(UInt32(myBalloons.count)))
        
        // update label and view
        myBalloonsLabel.text = "\(self.myBalloons[randomNumber].index)"
        myImageView.image = self.myBalloons[randomNumber].image
        
    }
    
    func create99Balloons () {
        // create an array of 99 balloons
        
        for var i = 0; i < 99 ; i++ {
            var myBalloon = balloon()

            myBalloon.index = i
            
            // generate random number from 0 to 3 and assign image based on number
            let randomNumber = Int(arc4random_uniform(UInt32(3)))
            switch randomNumber {
            case 0:
                myBalloon.image = UIImage (named: "RedBalloon1.jpg")
            case 1:
                myBalloon.image = UIImage (named: "RedBalloon2.jpg")
            case 2:
                myBalloon.image = UIImage (named: "RedBalloon3.jpg")
            case 3:
                myBalloon.image = UIImage (named: "RedBalloon4.jpg")
            default:
                println("nothing")
        
            }
            
            // append the myBalloon with random image and index i to the Array
            self.myBalloons.append(myBalloon)
            
            
        }
      
        
    }

}

