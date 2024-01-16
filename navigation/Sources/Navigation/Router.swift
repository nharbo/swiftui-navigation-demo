//
//  Router.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI
import Models

public final class Router: ObservableObject {
    @Published public var navigationPath: [NavigationPathType] = []
    @Published public var sheet: (any MyNavigationPath)?
}

// MARK: - Navigation

extension Router {
    public func navigate(to path: any MyNavigationPath) {
        navigationPath.append(path.navigationPathType)
    }
    
    public func present(sheet: any MyNavigationPath) {
        self.sheet = sheet
    }
    
    public func dismissSheet() {
        self.sheet = nil
    }
    
    public func popToRoot() {
        navigationPath.removeAll()
    }
}
