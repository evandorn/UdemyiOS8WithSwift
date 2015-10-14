//
//  ViewController.swift
//  HowManyFingers
//
//  Created by Evan Dorn on 10/14/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var guess: UITextField!
    @IBOutlet weak var answerLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func guessButton(sender: AnyObject) {
        var numberOfFingers = arc4random_uniform(6)
        
        println("The number of fingers is \(numberOfFingers)")
        
        var guessInt = guess.text.toInt()
        println("The guess  is \(guessInt)")
        
        if (guessInt != nil && guessInt <= 5) {
            if (Int(numberOfFingers) == guessInt) {
                answerLabel.text = "Correct!"
            } else {
                answerLabel.text = "Nope! It was a \(numberOfFingers)"
            }
        } else {
            answerLabel.text = "Please enter a number 0 - 5"
        }
        
        println(guess.text)
        
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}