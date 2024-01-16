//
//  ProfileView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI
import Navigation

public struct ProfileView: View {
    @EnvironmentObject var router: Router
    
    public init() {}
    
    public var body: some View {
        VStack {
            Text("Profile")
            Button("Go to search") {
                router.navigate(to: NavigationPath(.searchView))
            }
        }
//        .sheet(item: $router.sheet) { sheetPath in
//            RouterRootView(navigatable: PackageTwoNavigationPath.Self) {
//                sheetPath.associatedView
//            }
//        }
    }
}

#Preview {
    ProfileView()
}
