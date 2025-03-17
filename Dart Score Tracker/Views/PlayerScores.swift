//
//  PlayerScores.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct PlayerScores: View {
    @EnvironmentObject var appManager : AppManager
    var body: some View {
        VStack(spacing: 10){
            Text("Score")
                .font(.largeTitle)
            HStack {
                Spacer()
                VStack {
                    Text("Player 1")
                    Text(String(appManager.game.score[PlayerTurn.PlayerOne]!))
                        
                }
                .foregroundStyle(.red)
                Spacer()
                Spacer()
                VStack {
                    Text("Player 2")
                    Text(String(appManager.game.score[PlayerTurn.PlayerTwo]!))
                }
                .foregroundStyle(.blue)
                Spacer()
            }
            .font(.title)
        }
        .fontWeight(.bold)
    }
}

#Preview {
    PlayerScores()
        .environmentObject(AppManager())
}
