//
//  MainView.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            // Upper Button for reset
            HStack {
                ResetButton()
                Spacer()
            }
            // Score
            PlayerScores()
            // Dart Buttons
            SmallDartButtons()
            //Current Selections
            
            // Submit and Undo Buttons
        }
        .padding()
    }
}

#Preview {
    MainView()
        .environmentObject(AppManager())
}
