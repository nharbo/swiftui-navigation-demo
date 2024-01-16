//
//  File.swift
//  
//
//  Created by Nicolai Harbo on 15/01/2024.
//

import SwiftUI

extension View {
    func setupRouter<Navigatable: MyNavigationPath>(navigatable: Navigatable) -> some View {
        navigationDestination(for: Navigatable.self) { path in
            path.associatedView
        }
    }
    
//    func sheetWithNavigationStack<Navigatable: MyNavigationPath>(item: Binding<Navigatable?>) -> some View {
//        modifier(SheetWithNavigationStackModifier(item: item))
//    }
}
