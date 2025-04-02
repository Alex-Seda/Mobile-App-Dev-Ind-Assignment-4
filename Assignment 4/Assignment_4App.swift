//
//  Assignment_4App.swift
//  Assignment 4
//
//  Created by Alex on 4/2/25.
//

import SwiftUI

@main
struct Assignment_4App: App {
    let persistenceController = PersistenceController.shared

    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
