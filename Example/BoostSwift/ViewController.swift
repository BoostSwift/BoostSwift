//
//  ViewController.swift
//  BoostSwift_Example
//
//  Created by Xinus Wang on 11/29/2018.
//  Copyright (c) 2018 Xinus Wang. All rights reserved.
//

import UIKit
import BoostSwift

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let color = UIColor.random
        let color2 = UIColor(hex: 0xEEEEEE)
        let r = color.bs.red
        self.view.backgroundColor = color2
        
        let color3 = UIColor(rgba: [10, 20, 30])
        
        print("color=\(color), red=\(r)")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

