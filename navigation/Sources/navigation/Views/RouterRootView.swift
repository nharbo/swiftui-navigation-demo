//
//  RouterRootView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 09/10/2023.
//

import SwiftUI

struct RouterRootView<Content: View>: View {
    @StateObject private var router = Router()
    
    private let content: () -> Content
    
    public init(
        @ViewBuilder content: @escaping () -> Content
    ) {
        self.content = content
    }
    
    var body: some View {
        NavigationStack(path: $router.navigationPath) {
            content()
                .setupRouter()
        }
        .environmentObject(router)
    }
}
