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
            HStack {
                Image(systemName: "play.fill")
                    .rotationEffect(.degrees(180))
                    .foregroundStyle(.red)
                    .opacity(appManager.game.playerTurn == PlayerTurn.PlayerOne ? 1 : 0)
                Text("Score")
                    .font(.largeTitle)
                Image(systemName: "play.fill")
                    .foregroundStyle(.blue)
                    .opacity(appManager.game.playerTurn == PlayerTurn.PlayerTwo ? 1 : 0)
            }
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
