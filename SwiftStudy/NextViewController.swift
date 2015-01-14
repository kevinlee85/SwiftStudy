//
//  NextViewController.swift
//  SwiftStudy
//
//  Created by kevin on 12/24/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import Foundation
import UIKit

class NextViewController : UIViewController {
    
    @IBOutlet weak var label: UILabel!
    
    
    @IBOutlet weak var show: UIButton!
    
    
    @IBOutlet weak var hidden: UIButton!
    
    
    @IBAction func showButton(sender: UIButton) {
        label.hidden = false
    }
    
    
    @IBAction func hiddenButton(sender: UIButton) {
        label.hidden = true
    }
    
    override func viewDidLoad() {
        label.hidden = false
    }
}
