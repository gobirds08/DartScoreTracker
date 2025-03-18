//
//  ContentView.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color("BackgroundColor")
                .ignoresSafeArea()
            MainView()
                .foregroundStyle(Color("FontColor"))
        }
    }
}

#Preview {
    ContentView()
        .environmentObject(AppManager())
}
