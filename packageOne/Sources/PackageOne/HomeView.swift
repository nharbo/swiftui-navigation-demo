//
//  HomeView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI
import Navigation

public struct HomeView: View {
    @EnvironmentObject var router: Router
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Home")
            Button("Go to search") {
                router.navigate(to: NavigationPath(.searchView))
            }
//            Button("Go to search as sheet") {
//                router.present(sheet: .searchView)
//            }
        }
//        .sheet(item: $router.sheet) { sheetPath in
//            RouterRootView {
//                sheetPath.associatedView
//            }
//        }
    }
}

#Preview {
    HomeView()
}
