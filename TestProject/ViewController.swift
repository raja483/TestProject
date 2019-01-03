//
//  ViewController.swift
//  TestProject
//
//  Created by Venkat P on 23/12/18.
//  Copyright © 2018 Navikarana. All rights reserved.
//

import UIKit
import Foundation


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let configuration = URLSessionConfiguration.default
        let urlSession = URLSession.init(configuration: configuration)
        
        urlSession.dataTask(with: URL.init(string: "https://www.thehindu.com/news/national/feeder/default.rss")!) { (data, res, error) in
            
            print(res);
        }.resume()

        
        
    
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

