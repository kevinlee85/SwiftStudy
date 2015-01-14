//
//  ExampleProtocol.swift
//  SwiftStudy
//
//  Created by kevin on 10/28/14.
//  Copyright (c) 2014 kevin. All rights reserved.
//

import Foundation
protocol ExampleProtocol {
    var simpleDescription: String{get}
    mutating func adjust()
}