//
//  File.swift
//  
//
//  Created by Nicolai Harbo on 15/01/2024.
//

import Foundation
import Models

public enum NavigationPathType: Hashable, Identifiable {
    case rootView
    case homeView
    case profileView
    case personDetail(Person)
    case searchView
    case emptyView
    
    public var id: String { String(reflecting: self) }
}
