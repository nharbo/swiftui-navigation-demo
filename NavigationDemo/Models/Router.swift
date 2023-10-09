//
//  Router.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

public final class Router: ObservableObject {
    @Published public var navigationPath: [MyNavigationPath] = []


    public func navigate(to path: MyNavigationPath) {
        navigationPath.append(path)
    }
    
    public func popToRoot() {
        navigationPath.removeAll()
    }
}

public enum MyNavigationPath: Hashable {
    case personDetail(Person)
    case searchView
    
    @ViewBuilder
    var associatedView: some View {
        switch self {
        case let .personDetail(person):
            PersonDetailView(person: person)
        case .searchView:
            SearchView()
        }
    }
}
