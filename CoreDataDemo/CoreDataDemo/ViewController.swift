//
//  ViewController.swift
//  CoreDataDemo
//
//  Created by Evan Dorn on 10/20/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit
import CoreData

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Initializing App Delegate Variable
        var appDel:AppDelegate = UIApplication.sharedApplication().delegate as! AppDelegate
        
        var context:NSManagedObjectContext = appDel.managedObjectContext!
        
        var newUser = NSEntityDescription.insertNewObjectForEntityForName("Users", inManagedObjectContext: context) as! NSManagedObject
        
        newUser.setValue("Evan", forKey: "username")
        newUser.setValue("pass", forKey: "password")
        
        // 2nd user
        newUser.setValue("Abi", forKey: "username")
        newUser.setValue("pass2", forKey: "password")

        newUser.setValue("Oscar", forKey: "username")
        newUser.setValue("pass3", forKey: "password")

        newUser.setValue("Carly", forKey: "username")
        newUser.setValue("pass4", forKey: "password")

        
        context.save(nil)
        
        // Get data from the database
        var request = NSFetchRequest(entityName: "Users")
        
        request.returnsObjectsAsFaults = false
        
        // If you wanted to change Abi
        // will return only Abi from the database
        // Effectively like a search to only use Abi
        request.predicate = NSPredicate(format: "username = %@", "Abi")
        
        var results = context.executeFetchRequest(request, error: nil)
        
        
        
        if(results?.count > 0) {
            println(results)
        for result: AnyObject in results! {
            
            if let user = result.valueForKey("username") as? String {
            if (user == "Abi") {
                result.setValue("pass6", forKey: "password")
            }
        }
            
            // Way around returning result.password as an optional
            if let pass = result.password! {                            // only will run if pass has a value
                println(pass)
            }
            
            // println(result.password)    // if you can print fields. (this will be optional value)
            
              // have to valueForKey or Xcode will think result.username doesn't exist
             // Must Downcast to string using as? String. This code will only run if user has a value
            if let myUser = result.valueForKey("username") as? String {
                println(user)
                
                if(myUser == "Evan") {
                    context.deleteObject(result as! NSManagedObject) // delete kirsten
                    
                    println(myUser + " has been deleted")
                }
            }
            context.save(nil)
        }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

