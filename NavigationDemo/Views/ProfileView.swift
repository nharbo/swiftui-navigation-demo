//
//  ProfileView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct ProfileView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            Text("Profile")
            Button("Go to search") {
                router.navigate(to: .searchView)
            }
        }
        .sheet(item: $router.sheet) { sheetPath in
            RouterRootView {
                sheetPath.associatedView
            }
        }
    }
}

#Preview {
    ProfileView()
}
