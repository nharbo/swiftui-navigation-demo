//
//  PersonDetailView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI

struct PersonDetailView: View {
    var router: any Router
    
    let person: Person
    
    var body: some View {
        Text("Person details for \(person.name)")
        Button("Pop to root") {
            router.popToRoot()
        }
    }
}

#Preview {
    PersonDetailView(router: HomeRouter(), person: Person(name: "nico"))
}
