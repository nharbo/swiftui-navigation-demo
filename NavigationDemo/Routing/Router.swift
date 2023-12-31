//
//  Router.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

public final class Router: ObservableObject {
    @Published public var navigationPath: [MyNavigationPath] = []
    @Published public var sheet: MyNavigationPath?
}

// MARK: - Navigation

extension Router {
    public func navigate(to path: MyNavigationPath) {
        navigationPath.append(path)
    }
    
    public func present(sheet: MyNavigationPath) {
        self.sheet = sheet
    }
    
    public func dismissSheet() {
        self.sheet = nil
    }
    
    public func popToRoot() {
        navigationPath.removeAll()
    }
}

public enum MyNavigationPath: Hashable, Identifiable {
    case homeView
    case profileView
    case personDetail(Person)
    case searchView
    case emptyView
    
    public var id: String { String(reflecting: self) }
    
    @ViewBuilder
    var associatedView: some View {
        switch self {
        case .homeView:
            HomeView()
        case .profileView:
            ProfileView()
        case let .personDetail(person):
            PersonDetailView(person: person)
        case .searchView:
            SearchView()
        case .emptyView:
            EmptyView()
        }
    }
}
