//
//  ContentView.swift
//  Everyday Kitchen
//
//  Created by Manthan Chawda on 20/09/26.
//

import SwiftUI
import SwiftData

struct ContentView: View {
    @Environment(\.modelContext)
    private var modelContext

    @Query
    private var users: [User]

    var body: some View {
        VStack(spacing: 20) {
            Text("Everyday Kitchen")
                .font(.largeTitle)
                .bold()

            Text("Users stored: \(users.count)")

            Button("Create Test User") {
                let user = User(
                    name: "Manthan",
                    householdSize: 2
                )

                modelContext.insert(user)
            }
        }
        .padding()
    }
}

#Preview {
    ContentView()
        .modelContainer(
            for: User.self,
            inMemory: true
        )
}
