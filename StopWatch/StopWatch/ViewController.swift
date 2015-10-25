//
//  ViewController.swift
//  StopWatch
//
//  Created by Evan Dorn on 10/25/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer = NSTimer()                     // Timer object
    
    var timerCount = 0                        // variable in which the time is stored
    
    @IBOutlet weak var timeLabel: UILabel!

    func updateTime() {
        
        timerCount++
        println(timerCount)
        timeLabel.text = "\(timerCount)"
    }
    
    @IBAction func puaseTime(sender: AnyObject) {
        
        // to pause a timer simply use .invalidate()
        timer.invalidate()
    }
   
    @IBAction func stopTime(sender: AnyObject) {
        
        timer.invalidate()
        
        timerCount = 0
        
        timeLabel.text = "0"
    }
    
    @IBAction func startTime(sender: AnyObject) {
     
        timer = NSTimer.scheduledTimerWithTimeInterval(1, target: self, selector: Selector("updateTime"), userInfo: nil, repeats: true)
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

