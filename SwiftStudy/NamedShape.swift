//
//  NamedShape.swift
//  SwiftStudy
//
//  Created by kevin on 10/26/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import Foundation

class NamedShape {
    var numberOfSides: Int=0
    var name: String
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}