//
//  Recipe_ShareApp.swift
//  Recipe-Share
//
//  Created by COCOBSCCOMP231P-033 on 2024-09-28.
//

import SwiftUI
import SwiftData

@main
struct Recipe_ShareApp: App {
    var sharedModelContainer: ModelContainer = {
        let schema = Schema([
            Item.self,
        ])
        let modelConfiguration = ModelConfiguration(schema: schema, isStoredInMemoryOnly: false)

        do {
            return try ModelContainer(for: schema, configurations: [modelConfiguration])
        } catch {
            fatalError("Could not create ModelContainer: \(error)")
        }
    }()

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
        .modelContainer(sharedModelContainer)
    }
}
