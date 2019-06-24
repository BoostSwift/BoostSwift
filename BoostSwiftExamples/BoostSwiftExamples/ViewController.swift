//
//  ViewController.swift
//  BoostSwiftExamples
//
//  Created by Xin Wang on 2019/2/26.
//  Copyright © 2018-2019 Codingsoft. All rights reserved.
//

import UIKit
import FontAwesome_swift
import SwifterSwift
import CocoaLumberjack

class ViewController: UIViewController {
    @IBOutlet weak var btnTest: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var barButton: UIBarButtonItem!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var imageViewColored: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        // FontAwesome icon in label
        label.font = UIFont.fontAwesome(ofSize: 20, style: .regular)
        label.text = String.fontAwesomeIcon(name: .play) + "HELLO WORLD中文你好"
        label.textColor = UIColor.red
        
        let attributes = [NSAttributedString.Key.font: UIFont.fontAwesome(ofSize: 20, style: .brands)]
        
        // FontAwesome icon in button
        button.titleLabel?.font = UIFont.fontAwesome(ofSize: 30, style: .brands)
        button.setTitle(String.fontAwesomeIcon(name: .github), for: .normal)
        
        // FontAwesome icon as navigation bar item
        barButton.setTitleTextAttributes(attributes, for: .normal)
        barButton.title = String.fontAwesomeIcon(name: .github)
        
        // FontAwesome icon as image
        imageView.image = UIImage.fontAwesomeIcon(name: .github, style: .brands, textColor: .black, size: CGSize(width: 100, height: 100))
        
        // FontAwesome icon as image with background color
        imageViewColored.image = UIImage.fontAwesomeIcon(name: .github, style: .brands, textColor: .white, size: CGSize(width: 100, height: 100), backgroundColor: .black)
        
        
        let pagectrl = UIPagee
    }


}

