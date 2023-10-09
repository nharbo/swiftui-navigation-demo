//
//  HomeView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        Text("Home")
        Button("Go to search") {
            router.navigate(to: .searchView)
        }
    }
}

#Preview {
    HomeView()
}
