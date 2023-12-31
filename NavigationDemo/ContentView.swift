//
//  ContentView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            // Home
            RouterRootView {
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
            RouterRootView {
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

//#Preview {
//    ContentView()
//}
