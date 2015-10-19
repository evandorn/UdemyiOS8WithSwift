//
//  ViewController.swift
//  TimesTables
//
//  Created by Evan Dorn on 10/19/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate {

    
    @IBOutlet weak var table: UITableView!
    @IBOutlet weak var sliderValue: UISlider!
    @IBOutlet weak var sliderLabel: UILabel!
    
    @IBAction func sliderMoved(sender: AnyObject) {
        
        
        table.reloadData()                              // refresh table data
        var labelValue = Int(sliderValue.value * 20)
        sliderLabel.text = "\(labelValue) Times Table"
        println(sliderValue)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return 20
        
    }
    
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = UITableViewCell(style: UITableViewCellStyle.Default, reuseIdentifier: "Cell")
        
        let timesTable = Int(sliderValue.value * 20)
        
        // indexPath.row + 1 eliminates the 0th times table row
        cell.textLabel?.text = String(timesTable * (indexPath.row + 1))
        
        return cell
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

