//
//  ViewController.swift
//  sampleHTML
//
//  Created by Tsukasa Chinen on 2017/11/23.
//  Copyright © 2017年 Tsukasa Chinen. All rights reserved.
//

import UIKit
import WebKit

class ViewController: UIViewController {

    @IBOutlet weak var myWebView: UIWebView!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        /* Load: Local HTML */
        let htmlPath = Bundle.main.path(forResource: "test", ofType: "html")
        let url = URL(fileURLWithPath:htmlPath!)
        let urlRequest = URLRequest(url: url)
        myWebView.loadRequest(urlRequest)

    } /* END: viewDidLoad */

    func webView(webView: UIWebView, shouldStartLoadWithRequest request: NSURLRequest, navigationType: UIWebViewNavigationType) -> Bool {
        
        if navigationType == UIWebViewNavigationType.formSubmitted {
            if request.url!.scheme == "hoge" {
                print("hoge")
                return false
            }
        }
        return true
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

