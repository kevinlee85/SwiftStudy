//
//  ViewController.swift
//  SwiftStudy
//
//  Created by kevin on 10/20/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var mylable: UILabel!
    @IBAction func myButton(sender: AnyObject) {
            mylable.text! = "hi"
    }
    
    var humberButton :HamburgerButton!=nil
    //2015-01-04 practice coding uiview
    var imageView:UIImageView = UIImageView()
    
    var backGround:Dictionary<String, String> = [
        "Background1":"background1",
        "Background2":"background2"
    ]
    
    let width: CGFloat = 320
    let height: CGFloat = 568
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Call swift language codes here
        var te = study()
        te.goTest()
        // END 
        
        // 2015-1-4 practice how to use code to add UIKit.
        var buttonTitle = ["Background 1" ,"Background 2"]
        
        // Add UIImage object to the imageView
        var backgroundImage: UIImage = UIImage(named: self.backGround["Background1"]!)!
        imageView = UIImageView(frame: self.view.frame)
        imageView.image = backgroundImage
        self.view.addSubview(imageView)
        
        // Setup the button to change the background image
        for i in 0 ... buttonTitle.count-1 {
            var button:UIButton = UIButton.buttonWithType(UIButtonType.System) as UIButton
            button.frame = CGRectMake(0, 0, 200, 20)
            button.center = CGPointMake(self.view.center.x, CGFloat(400+i*50))
            button.setTitle(buttonTitle[i], forState: UIControlState.Normal)
            button.setTitleColor(UIColor.whiteColor(), forState: UIControlState.Normal)
            button.addTarget(self, action: "buttonClicked:", forControlEvents: UIControlEvents.TouchUpInside)
            button.tag = i+1
            self.view.addSubview(button)
        }

        
        // Practice UI element
        let textLabel = UILabel(frame:CGRectMake(0,0, 200,100))
        textLabel.center = CGPointMake(self.view.center.x, 200)
        textLabel.textAlignment = NSTextAlignment.Center
        textLabel.textColor = UIColor.yellowColor()
        textLabel.font = UIFont(name: "Blazed", size: CGFloat(50))
        textLabel.text = "let study UIlabel"
        
        self.view.addSubview(textLabel)
        
//        self.view.backgroundColor = UIColor(red: 38.0 / 255, green: 151.0 / 255, blue: 68.0 / 255, alpha: 1)
        self.humberButton = HamburgerButton(frame: CGRectMake(50, 80, 50, 50))
        self.humberButton.addTarget(self, action: "toggle:", forControlEvents: UIControlEvents.TouchUpInside)
        self.view.addSubview(self.humberButton)
        // Do any additional setup after loading the view, typically from a nib.
        
        
        
    }
    


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func toggle(sender: AnyObject!) {
        self.humberButton.showsMenu = !self.humberButton.showsMenu
    }
    
    
    
    func buttonClicked(sender:UIButton) {
        var button: UIButton = sender
        var imageSelector: String = "Background\(button.tag)"
        
        //Below is UI animation to handle the UX to change the background image
        UIView.animateWithDuration(0.4, animations: {self.imageView.alpha=0
            }, completion: { _ in
                self.imageView.image = UIImage(named: self.backGround[imageSelector]!)
                UIView.animateWithDuration(0.4, animations: {self.imageView.alpha=1})
            })
        
    }


}

