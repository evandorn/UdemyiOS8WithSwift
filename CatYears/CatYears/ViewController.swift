//
//  ViewController.swift
//  CatYears
//
//  Created by Evan Dorn on 10/13/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var ageField: UITextField!
    
    @IBAction func findAgeButton(sender: AnyObject) {
    
        var enteredAge = ageField.text.toInt()        // convert input to Int format
        println(ageField.text)
        
        if(enteredAge != nil) {
        var catYears = enteredAge! * 7
        resultLabel.text = "Your cat is \(catYears)"
            
        } else {
            resultLabel.text = "Please enter a whole number"
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

