//
//  ViewController.swift
//  Page
//
//  Created by Xin Wang on 2019/5/1.
//  Copyright © 2019 Codingsoft. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let pagectrl = UIPageViewController()
        pagectrl.delegate = self
        
        let tableview = UITableView()
        tableview.delegate = self
    }
}


extension ViewController : UITableViewDelegate {
    
}

extension ViewController : UIPageViewControllerDelegate {
    
}
