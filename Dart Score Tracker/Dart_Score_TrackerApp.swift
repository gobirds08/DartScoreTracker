//
//  Dart_Score_TrackerApp.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

@main
struct Dart_Score_TrackerApp: App {
    // add manager here
    @StateObject var appManager : AppManager = AppManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appManager)
        }
    }
}
