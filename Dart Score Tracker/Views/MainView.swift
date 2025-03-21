//
//  MainView.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct MainView: View {
    @EnvironmentObject var appManager : AppManager
    var body: some View {
        VStack {
            // Upper Button for reset
            HStack {
                ResetButton()
                Spacer()
            }
            
            if !appManager.game.gameOver {
                // Score
                Spacer()
                PlayerScores()
                // Player Scores Hit
                Spacer()
                PlayerScoresHit(player: appManager.game.playerTurn)
                    .padding(20)
                // Dart Buttons
                Spacer()
                SmallDartButtons()
                //Current Selections
                Spacer()
                CurrentSelections()
                    .frame(height: 50)
                // Submit and Undo Buttons
                Spacer()
                ControlButtons()
            } else {
                Spacer()
                VStack {
                    Text("Game Over")
                    if appManager.game.tie {
                        Text("Draw")
                    } else {
                        if (appManager.game.winner == Player.PlayerOne) {
                            Text("Player 1 Wins!!!")
                                .foregroundStyle(.red)
                        } else {
                            Text("Player 2 Wins!!!")
                                .foregroundStyle(.blue)
                        }
                    }
                }
                .font(.system(size: 40))
            }
            Spacer()
        }
        .padding()
    }
}

#Preview {
    MainView()
        .environmentObject(AppManager())
}
