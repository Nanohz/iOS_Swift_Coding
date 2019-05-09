//
//  ViewController.swift
//  Roll The Dicee
//
//  Created by Carlos Ramirez on 1/30/19.
//  Copyright © 2019 Carlos Ramirez. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let diceArray = ["dice1", "dice2", "dice3", "dice4", "dice5", "dice6"]
    
    var randomDiceIndex1: Int = 0
    var randomDiceIndex2: Int = 0
    
    @IBOutlet weak var diceImageView1: UIImageView!
    @IBOutlet weak var diceImageView2: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        updateDiceImages()
        
    }


    @IBAction func rollDiceButton(_ sender:  UIButton) {
        updateDiceImages()
        
        //Example of convelution in code. Here we are applying the DRY method, "Do Not Repeat Yourself"
        
        //randomDiceIndex1 = Int.random(in: 0 ... 5)
       // randomDiceIndex2 = Int.random(in: 0 ... 5)
        
       // print(randomDiceIndex1)
        
        //diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        
        //diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
        
        
    }
    
    override func motionEnded(_ motion: UIEvent.EventSubtype, with event: UIEvent?){
        updateDiceImages()
    }
    
    func updateDiceImages(){
        
        randomDiceIndex1 = Int.random(in: 0 ... 5)
        randomDiceIndex2 = Int.random(in: 0 ... 5)
        
        
        diceImageView1.image = UIImage(named: diceArray[randomDiceIndex1])
        diceImageView2.image = UIImage(named: diceArray[randomDiceIndex2])
        
    }
}

