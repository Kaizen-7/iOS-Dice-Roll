//
//  ViewController.swift
//  Dicee-iOS13
//
//  Created by Angela Yu on 11/06/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var firstDice: UIImageView!
    @IBOutlet weak var secondDice: UIImageView!
    
    let diceStrings = ["DiceOne", "DiceTwo", "DiceThree", "DiceFour", "DiceFive", "DiceSix"]
    
    var firstDiceValue = 1
    var secondDiceValue = 1
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func rollButtonPressed(_ sender: UIButton) {
        firstDiceValue = Int.random(in: 0...5)
        secondDiceValue = Int.random(in: 0...5)

        firstDice.image = UIImage(imageLiteralResourceName: diceStrings[firstDiceValue])
        secondDice.image = UIImage(imageLiteralResourceName: diceStrings[secondDiceValue])
    }
    
}

