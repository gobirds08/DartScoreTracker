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
            Color.mint
                .ignoresSafeArea()
            MainView()
        }
    }
}

#Preview {
    ContentView()
}
