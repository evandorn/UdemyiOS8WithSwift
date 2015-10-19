//
//  ViewController.swift
//  TableViews
//
//  Created by Evan Dorn on 10/15/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

// TableViewDelegate allows View Controller to control the content in the table
class ViewController: UIViewController, UITableViewDelegate {

    var cellContent = ["Evan", "Abi", "Carly", "Mom"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cellContent.count      // returns the number in the array
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        // Create 3 cells containing the text, Test
        let myCell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        myCell.textLabel?.text = cellContent[indexPath.row]               // will display the data based on what's in the array.
        return myCell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
