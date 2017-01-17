//
//  ViewController.swift
//  Project1
//
//  Created by Aigar Ottas on 17/01/17.
//  Copyright © 2017 Aigar Ottas. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var pictures = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let fm = FileManager.default
        let path = Bundle.main.resourcePath!
        let items = try! fm.contentsOfDirectory(atPath: path)
        
        for item in items{
            if item.hasPrefix("nssl") {
                pictures.append(item)
            }
        }
        // Do any additional setup after loading the view, typically from a nib.
        print(pictures)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    

}

