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
    var label:UILabel!
    var label2:UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Add a label and a button to the view
        
        let label = UILabel()
        label.frame = CGRectMake(150, 150, 60, 60)
        label.text = "0"

        self.view.addSubview(label)
        self.label = label

        let label2 = UILabel()
        label2.frame = CGRectMake(150, 200, 60, 60)
        label2.text = "0"
        
        self.view.addSubview(label2)
        self.label2 = label2
        
        let addButton = UIButton()
        addButton.frame = CGRectMake(150, 250, 10, 60)
        addButton.setTitle("+", forState: .Normal)
        addButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(addButton)

        addButton.addTarget(self, action: "incrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRectMake(150, 300, 10, 60)
        decrementButton.setTitle("-", forState: .Normal)
        decrementButton.setTitleColor(UIColor.blueColor(), forState: .Normal)
        self.view.addSubview(decrementButton)
        
        decrementButton.addTarget(self, action: "decrementCount", forControlEvents: UIControlEvents.TouchUpInside)
        
    }
    
    func incrementCount() {
        self.count++
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }
    
    func decrementCount() {
        self.count--
        self.label.text = "\(self.count)"
        self.label2.text = "\(self.count)"
    }

}

