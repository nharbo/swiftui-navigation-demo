//
//  File.swift
//  
//
//  Created by Nicolai Harbo on 15/01/2024.
//

import SwiftUI
import Models

public protocol MyNavigationPath: Hashable, Identifiable {
    var associatedView: AnyView { get }
    var navigationPathType: NavigationPathType { get set }
}
