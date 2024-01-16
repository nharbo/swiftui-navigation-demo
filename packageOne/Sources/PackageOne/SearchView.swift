//
//  SearchView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI
import Navigation
import Models

public struct SearchView: View {
    @EnvironmentObject var router: Router
    
    public init() { }
    
    public var body: some View {
        VStack {
            Text("Search")
            Button("Go to user") {
                router.navigate(to: NavigationPath(.personDetail(Person(name: "Lars"))))
            }
//            Button("Go to user as sheet") {
//                router.present(sheet: .personDetail(Person(name: "Lars")))
//            }
//            Button("Dismiss modal") {
//                router.dismissSheet()
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
    SearchView()
}
