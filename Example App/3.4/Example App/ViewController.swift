//
//  ViewController.swift
//  Example App
//
//  Created by Rob Percival on 15/12/2014.
//  Copyright (c) 2014 Appfish. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // Outlet allows you to conntect the item in IB and refer to it in code
    @IBOutlet var myLabel: UILabel!
    
    // viewDidLoad() is what runs when the view is loaded
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // simplist type of interaction is to have interation on the log in Xcode (bottom of screen)
        println("Hello World")          // great for debugging
        myLabel.text = "I can change the label in code. It works!"     // change l
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

