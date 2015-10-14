//
//  ViewController.swift
//  IsItPrime
//
//  Created by Evan Dorn on 10/14/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var number: UITextField!
    
    @IBAction func isPrimeButton(sender: AnyObject) {
        
        var numberAsInt = number.text.toInt()
        
        if(numberAsInt != nil) {
            
            var unwrappedNumber = numberAsInt!
            var isPrime = true
            
            if(unwrappedNumber == 1 || unwrappedNumber == 0) {
                isPrime = false
            }
            
            if(unwrappedNumber != 2 && unwrappedNumber != 1) {
                for var i = 2; i < unwrappedNumber; i++ {
                    if unwrappedNumber % i == 0 {
                        isPrime = false
                    }
                }
            }
            if(isPrime == true) {
                resultLabel.text = "\(unwrappedNumber) is prime!"
            } else {
                resultLabel.text = "\(unwrappedNumber) is not prime!"
            }
        } else {
            resultLabel.text = "Please enter a number in the box"
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
