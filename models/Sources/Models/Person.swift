//
//  Person.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import Foundation

public struct Person: Hashable {
    
    public init(name: String) {
        self.name = name
    }
    
    public var name: String
}
