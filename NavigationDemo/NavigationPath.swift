//
//  NavigationPath.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 15/01/2024.
//

import SwiftUI
import Models
import Navigation
import PackageOne
import PackageTwo

public struct NicoNavigationPath: MyNavigationPath {
    
    public var id = UUID()
    public var navigationPathType: Navigation.NavigationPathType
    
    public init(_ navigationPathType: Navigation.NavigationPathType) {
        self.navigationPathType = navigationPathType
    }
    
    public var associatedView: AnyView {
        switch navigationPathType {
        case .rootView:
            AnyView(EmptyView())
        case .homeView:
            AnyView(HomeView())
        case .profileView:
            AnyView(ProfileView())
        case let .personDetail(person):
            AnyView(PersonDetailView(person: person))
        case .searchView:
            AnyView(SearchView())
        case .emptyView:
            AnyView(EmptyView())
        }
    }
}
