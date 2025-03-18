//
//  Dart_Score_TrackerApp.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

@main
struct Dart_Score_TrackerApp: App {
    @Environment(\.scenePhase) var scenePhase
    @StateObject var appManager : AppManager = AppManager()
    var body: some Scene {
        WindowGroup {
            ContentView()
                .environmentObject(appManager)
                .onChange(of: scenePhase){ oldValue, newValue in
                    switch newValue{
                        case .background:
                            appManager.save()
                        default:
                            break
                    }
                }
        }
    }
}
