//
//  ViewController.swift
//  PermanentStorage
//
//  Created by Evan Dorn on 10/20/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
       
        NSUserDefaults.standardUserDefaults().setObject("Evan", forKey: "name")         // Set default user default data
        
        // Anything saved in NSUserDefaults is described as an "anyObject" must tell
        // NSUserDefaults what the type is
        var myName = NSUserDefaults.standardUserDefaults().objectForKey("name")! as! String      // retrieves the data
        
        println(myName)
        
        
        var arr = [1,2,3]
        NSUserDefaults.standardUserDefaults().setObject(arr, forKey: "array")         // Set default user default data
        
        var recalledArray = NSUserDefaults.standardUserDefaults().objectForKey("array")! as! NSArray
        
        println(recalledArray[2])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

