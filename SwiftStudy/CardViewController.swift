//
//  CardViewController.swift
//  SwiftStudy
//
//  Created by kevin on 12/30/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import Foundation
import UIKit

class CardViewController : UIViewController
{
    
    @IBOutlet weak var playButton: UIButton!
    
    @IBOutlet weak var card1: UIImageView!
    
    @IBOutlet weak var card2: UIImageView!
    
    var hamberButton : HamburgerButton? = HamburgerButton(frame: CGRectMake(133, 150, 54, 54))
    
    var myImageArray : [String] = ["card0", "card1", "card2", "card3"]
 
    override func  viewDidLoad() {
        playButton.setTitle("Go", forState: UIControlState.Normal)
        
        //Below is helping to check how to add button by codes.
        //self.view.backgroundColor = UIColor(red: 38.0 / 255, green: 151.0 / 255, blue: 68.0 / 255, alpha: 1)
        
        //Use button
        self.hamberButton?.setColor(UIColor.blackColor().CGColor)
        self.hamberButton?.addTarget(self, action: "togger:", forControlEvents: UIControlEvents.TouchUpInside)
        
        self.view.addSubview(hamberButton!)
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle  {
        return .LightContent
    }
    
    func togger(sender: AnyObject!)
    {
        self.hamberButton?.showsMenu = !self.hamberButton!.showsMenu
        
        //Gengerate the random number below 4.
        var number1 = Int(arc4random_uniform(4))
        var number2 = arc4random_uniform(4)
        //Create the card path by the image name, such as：card0 card1 card2 card3 
//        var cardpath1 = String(format: "card%i", number1)
        var cardpath1 = self.myImageArray[number1]
        var cardpath2 = String(format: "card%i", number2)
        self.card1.image = UIImage(named: cardpath1)
        self.card2.image = UIImage(named: cardpath2)
    }
    
}
