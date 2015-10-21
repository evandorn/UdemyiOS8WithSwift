//
//  ViewController.swift
//  StoringImages
//
//  Created by Evan Dorn on 10/21/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let url = NSURL(string: "https://pbs.twimg.com/profile_images/648693461470674944/o5746v1v.jpg")
        
        let urlRequest = NSURLRequest(URL: url!)
        
        // asynchronous request (multithreading) 
        // (this block will ONLY run when the asynchronous request completes)
        
        // This is a Closure (sort of like a method within a method)
        // Must use .self keyword to search the upper level scope
        NSURLConnection.sendAsynchronousRequest(urlRequest, queue: NSOperationQueue.mainQueue()) {  (response, data, error) -> Void in
            
            if(error != nil) {
                println("There was an error")
            } else {
                
                if let abi = UIImage(data: data) {
                    
                    // self.image.image = abi
                    
                    var documentsDirectory:String?
                    
                    var paths:[AnyObject] = NSSearchPathForDirectoriesInDomains(NSSearchPathDirectory.DocumentDirectory, NSSearchPathDomainMask.UserDomainMask, true)
                    
                    if(paths.count > 0) {
                        
                        documentsDirectory = paths[0] as? String
                        
                        var savePath = documentsDirectory! + "/abi.jpg"
                        
                        NSFileManager.defaultManager().createFileAtPath(savePath, contents: data, attributes: nil)
                        
                        self.myImage.image = UIImage(named: savePath)
                    }
                }
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

