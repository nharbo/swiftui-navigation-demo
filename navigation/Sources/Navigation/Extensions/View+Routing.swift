//
//  View+Routing.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 09/10/2023.
//

import SwiftUI

extension View {
    func setupRouter() -> some View {
        navigationDestination(for: MyNavigationPath.self) { path in
            path.associatedView
        }
    }
    
    func sheetWithNavigationStack(item: Binding<MyNavigationPath?>) -> some View {
        modifier(SheetWithNavigationStackModifier(item: item))
    }
}
