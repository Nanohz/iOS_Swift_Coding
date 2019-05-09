//
//  ViewController.swift
//  The Genie Ball
//
//  Created by Carlos Ramirez on 2/10/19.
//  Copyright © 2019 Carlos Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let ballArray = ["ball1", "ball2", "ball3", "ball4", "ball5"]
    var randomBallNumber: Int = 0
    
    
    @IBOutlet weak var imageView1: UIImageView!
    
override func viewDidLoad() {
       //newBallImage()
    
    super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
       
    @IBAction func askButtonPressed(_ sender: UIButton) {
        newBallImage()
    }
    func newBallImage(){
        randomBallNumber = Int.random(in: 0 ... 4)
        imageView1.image = UIImage(named: ballArray[randomBallNumber])
    }
    
    
}



