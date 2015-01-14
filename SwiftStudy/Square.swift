//
//  Square.swift
//  SwiftStudy
//
//  Created by kevin on 10/26/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import Foundation

class Square:NamedShape {
    var sideLength: Double
    
    var paramter: Double{
        set{
            sideLength = newValue*3
            
        }
        get{
            return sideLength - 1
        }
    }
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area()-> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of lenght \(sideLength) square"
    }
    
}