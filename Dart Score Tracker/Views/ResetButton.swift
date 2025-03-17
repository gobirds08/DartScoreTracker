//
//  ResetButton.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct ResetButton: View {
    @EnvironmentObject var appManager : AppManager
    var body: some View {
        Button {
            appManager.reset_game()
        } label: {
            Image(systemName: "plus")
                .foregroundStyle(.black)
                .font(.title)
        }
    }
}

#Preview {
    ResetButton()
        .environmentObject(AppManager())
}
