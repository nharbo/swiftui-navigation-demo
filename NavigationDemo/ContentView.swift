//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var homeRouter = Router()
    @StateObject private var profileRouter = Router()
    
    var body: some View {
        TabView {
            NavigationStack(path: $homeRouter.navigationPath) {
                HomeView()
                    .setupRouter()
            }
            .environmentObject(homeRouter)
            .tabItem {
                Label {
                    Text("Home")
                } icon: {
                    Image(systemName: "house")
                }
            }
            
            NavigationStack(path: $profileRouter.navigationPath) {
                ProfileView()
                    .setupRouter()
            }
            .environmentObject(profileRouter)
            .tabItem {
                Label {
                    Text("Profile")
                } icon: {
                    Image(systemName: "person")
                }
            }
        }
    }
}

extension View {
    func setupRouter() -> some View {
        navigationDestination(for: MyNavigationPath.self) { path in
            path.associatedView
        }
    }
}

//#Preview {
//    ContentView()
//}
