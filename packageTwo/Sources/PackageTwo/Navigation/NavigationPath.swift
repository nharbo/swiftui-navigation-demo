//
//  File.swift
//  
//
//  Created by Nicolai Harbo on 15/01/2024.
//

import SwiftUI
import Models
import Navigation

public struct NavigationPath: MyNavigationPath {
    
    public var id = UUID()
    public var navigationPathType: Navigation.NavigationPathType
    
    public init(_ navigationPathType: Navigation.NavigationPathType) {
        self.navigationPathType = navigationPathType
    }
    
    public var associatedView: AnyView {
        switch navigationPathType {
        case .profileView:
            AnyView(ProfileView())
        case let .personDetail(person):
            AnyView(PersonDetailView(person: person))
        case .emptyView:
            AnyView(EmptyView())
        default:
            AnyView(EmptyView())
        }
    }
}
