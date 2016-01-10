//
//  ViewController.swift
//  Click Counter
//
//  Created by Jeff Schmitz on 1/5/16.
//  Copyright © 2016 Jeff Schmitz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var count = 0
    @IBOutlet var label:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
    }

}

