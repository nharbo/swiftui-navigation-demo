//
//  Router.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

public protocol Router: ObservableObject {
    func navigate(to path: MyNavigationPath)
    func popToRoot()
}

public class HomeRouter: Router {
    
    @Published var navigationPath = NavigationPath()
    
    public func navigate(to path: MyNavigationPath) {
        MyNavigationPath.setCurrentRouter(self)
        navigationPath.append(path)
    }
    
    public func popToRoot() {
        MyNavigationPath.setCurrentRouter(self)
        navigationPath = NavigationPath()
    }
}

public class ProfileRouter: Router {
    
    @Published var navigationPath = NavigationPath()
    
    public func navigate(to path: MyNavigationPath) {
        MyNavigationPath.setCurrentRouter(self)
        navigationPath.append(path)
    }
    
    public func popToRoot() {
        MyNavigationPath.setCurrentRouter(self)
        navigationPath = NavigationPath()
    }
}

public enum MyNavigationPath: Hashable {
    case personDetail(Person)
    case searchView
    
    var associatedView: AnyView {
        switch self {
        case .personDetail(let person):
            return AnyView(PersonDetailView(router: MyNavigationPath.currentRouter, person: person))
        case .searchView:
            return AnyView(SearchView(router: MyNavigationPath.currentRouter))
        }
    }
    
    static var currentRouter: any Router = HomeRouter()
    static func setCurrentRouter(_ router: any Router) {
        MyNavigationPath.currentRouter = router
    }
}
