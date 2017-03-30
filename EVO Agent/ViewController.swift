//
//  ViewController.swift
//  EVO Agent
//
//  Created by Captain Proton on 3/8/17.
//  Copyright © 2017 dicemediagroup. All rights reserved.
//

import UIKit
import WebKit
class ViewController: UIViewController, WKUIDelegate {
    
    var webView: WKWebView!
    
    override func loadView() {
        let webConfiguration = WKWebViewConfiguration()
        webView = WKWebView(frame: .zero, configuration: webConfiguration)
        webView.uiDelegate = self
        view = webView
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let myURL = URL(string: "https://realestateflywheel-production.herokuapp.com")
        let myRequest = URLRequest(url: myURL!)
        webView.load(myRequest)
    }};
