//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject private var homeRouter = HomeRouter()
    @StateObject private var profileRouter = ProfileRouter()
    
    var body: some View {
        TabView {
            NavigationStack(path: $homeRouter.navigationPath) {
                HomeView()
                    .navigationDestination(for: MyNavigationPath.self) { path in
                        path.associatedView
                    }
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
                    .navigationDestination(for: MyNavigationPath.self) { path in
                        path.associatedView
                    }
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

//#Preview {
//    ContentView()
//}
