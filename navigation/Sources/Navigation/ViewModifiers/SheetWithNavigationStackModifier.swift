////
////  SheetWithNavigationStackModifier.swift
////  NavigationDemo
////
////  Created by Nicolai Harbo on 09/10/2023.
////
//
//import SwiftUI
//
//struct SheetWithNavigationStackModifier<Navigatable: MyNavigationPath>: ViewModifier {
//    var item: Binding<Navigatable?>
//    
//    public init(item: Binding<Navigatable?>) {
//        self.item = item
//    }
//    
//    func body(content: Content) -> some View {
//        content
//            .sheet(item: item) { sheetPath in
//                RouterRootView(navigatable: item.wrappedValue) {
//                    sheetPath.associatedView
//                }
//            }
//    }
//}
