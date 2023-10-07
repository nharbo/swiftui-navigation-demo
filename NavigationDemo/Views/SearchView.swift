//
//  SearchView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct SearchView: View {
    var router: any Router
    
    var body: some View {
        Text("Search")
        Button("Go to user") {
            router.navigate(to: .personDetail(Person(name: "Lars")))
        }
    }
}

#Preview {
    SearchView(router: HomeRouter())
}
