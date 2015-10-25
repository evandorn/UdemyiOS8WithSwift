//
//  ViewController.swift
//  NavigationViews
//
//  Created by Evan Dorn on 10/25/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()                     // Timer object
    
    var timerCount = 0                        // variable in which the time is stored
    
    func timerResult() {
        
        timerCount++
        println(timerCount)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("result"), userInfo: nil, repeats: true)
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

