//
//  RouterRootView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 09/10/2023.
//

import SwiftUI

public struct RouterRootView<Navigatable: MyNavigationPath, Content: View>: View {
    @StateObject private var router = Router()
    
    private let navigatable: any MyNavigationPath
    private let content: () -> Content
    
    public init(
        navigatable: any MyNavigationPath,
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.navigatable = navigatable
        self.content = content
    }
    
    public var body: some View {
        NavigationStack(path: $router.navigationPath) {
            EmptyView()
//            content()
//                .setupRouter(navigatable: navigatable)
        }
        .environmentObject(router)
    }
}
