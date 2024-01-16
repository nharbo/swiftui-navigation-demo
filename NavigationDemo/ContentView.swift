//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI
import Navigation
import PackageOne
import PackageTwo

struct ContentView: View {
    
    var body: some View {
        TabView {
            // Home
            RouterRootView(navigatable: NicoNavigationPath(.rootView)) {
                HomeView()
            }
            .tabItem {
                Label {
                    Text("Home")
                } icon: {
                    Image(systemName: "house")
                }
            }
            
            // Profile
            RouterRootView(navigatable: NicoNavigationPath(.rootView)) {
                ProfileView()
            }
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

#Preview {
    ContentView()
}
