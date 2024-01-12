//
//  SheetWithNavigationStackModifier.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 09/10/2023.
//

import SwiftUI

struct SheetWithNavigationStackModifier: ViewModifier {
    var item: Binding<MyNavigationPath?>
    
    public init(item: Binding<MyNavigationPath?>) {
        self.item = item
    }
    
    func body(content: Content) -> some View {
        content
            .sheet(item: item) { sheetPath in
                RouterRootView {
                    sheetPath.associatedView
                }
            }
    }
}
