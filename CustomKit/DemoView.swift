//
//  DemoView.swift
//  SwiftStudy
//
//  Created by kevin on 1/2/15.
//  Copyright (c) 2015 kevin. All rights reserved.
//

import UIKit

@IBDesignable
class DemoView: UIView {

    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    override func  layoutSubviews() {
        super.layoutSubviews()
        var myLabel = UILabel(frame: CGRectMake(0, 50, 120, 30))
        myLabel.text = "HelloWorld"
        myLabel.textColor = UIColor.blueColor()
        self.addSubview(myLabel)
        
        var blur:UIBlurEffect = UIBlurEffect (style: UIBlurEffectStyle.Light)
        var effectView : UIVisualEffectView = UIVisualEffectView(effect: blur)
        
        effectView.frame = CGRectMake(0, 80, 150, 50)
        self.addSubview(effectView)
        
    }

}
