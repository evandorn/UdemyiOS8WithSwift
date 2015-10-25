//
//  ViewController.swift
//  WebViewDemo
//
//  Created by Evan Dorn on 10/21/15.
//  Copyright (c) 2015 Evan Dorn. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var webView: UIWebView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // loading Google into a webview
        
        let url = NSURL(string: "http://google.com")
        
        var request = NSURLRequest(URL:url!)
        
        webView.loadRequest(request)

        
        /*
        // person custom HTML code
        var html = "<html><head></head><body><h1>Hello World!</h1></body></html>"
        webView.loadHTMLString(html, baseURL: nil)
        */
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}
