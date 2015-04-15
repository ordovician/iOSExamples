//
//  DooBar.swift
//  OCCalculator
//
//  Created by Erik Engheim on 15/04/15.
//  Copyright (c) 2015 Pexip. All rights reserved.
//

import Foundation

public class DooBar : NSObject {
    var foo: String
    var bar: String
    public init(foo: String, bar: String) {
        self.foo = foo
        self.bar = bar
    }
    
    public func concat() -> String {
        return self.foo + self.bar
    }
}