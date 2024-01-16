//
//  PersonDetailView.swift
//  NavigationDemo
//
//  Created by Nicolai Harbo on 06/10/2023.
//

import SwiftUI
import Navigation
import Models

public struct PersonDetailView: View {
    @EnvironmentObject var router: Router
    
    let person: Person
    
    public init(person: Person) {
        self.person = person
    }
    
    public var body: some View {
        VStack {
            Text("Person details for \(person.name)")
            Button("Pop to root") {
                router.popToRoot()
            }
//            Button("Go to search as sheet") {
//                router.present(sheet: .searchView)
//            }
            Button("Dismiss modal") {
                router.dismissSheet()
            }
        }
//        .sheet(item: $router.sheet) { sheetPath in
//            RouterRootView {
//                sheetPath.associatedView
//            }
//        }
    }
}

#Preview {
    PersonDetailView(person: Person(name: "nico"))
}
