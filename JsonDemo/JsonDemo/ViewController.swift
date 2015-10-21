//
//  ViewController.swift
//  JsonDemo
//
//  Created by Evan Dorn on 10/21/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "http://www.telize.com/geoip")
        
        let session = NSURLSession.sharedSession()
        let task = session.dataTaskWithURL(url!, completionHandler: { (data, response, error)  -> Void in
        
            if(error != nil) {
                println(error)
            } else {
                
                var err: NSError?
            
            // Converts Json string into an array or dicitonary
            var jsonResult = NSJSONSerialization.JSONObjectWithData(data, options: NSJSONReadingOptions.MutableContainers, error: &err) as! NSDictionary
            
            println(jsonResult)
             
            println("My Country code is " + String(stringInterpolationSegment: jsonResult["country_code"]!))
                
            println(jsonResult["region_code"]!)
            }
        })
        task.resume()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

