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
                    .opacity(appManager.game.playerTurn == Player.PlayerOne ? 1 : 0)
                Text("Score")
                    .font(.system(size: 70))
                Image(systemName: "play.fill")
                    .foregroundStyle(.blue)
                    .opacity(appManager.game.playerTurn == Player.PlayerTwo ? 1 : 0)
            }
            HStack {
                Spacer()
                VStack {
                    Text("Player 1")
                    Text(String(appManager.game.score[Player.PlayerOne]!))
                        .font(.system(size: 70))
                        
                }
                .foregroundStyle(.red)
                Spacer()
                Spacer()
                VStack {
                    Text("Player 2")
                    Text(String(appManager.game.score[Player.PlayerTwo]!))
                        .font(.system(size: 70))
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
