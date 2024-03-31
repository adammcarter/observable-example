//
//  observabletestApp.swift
//  observabletest
//
//  Created by Adam Carter on 31/03/2024.
//

import SwiftUI

@main
struct observabletestApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environment(Actual(name: ""))
        }
    }
}
