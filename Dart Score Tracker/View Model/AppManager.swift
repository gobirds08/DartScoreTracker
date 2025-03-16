//
//  AppManager.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import Foundation

class AppManager : ObservableObject {
    var game : Game = Game()
    
    
    func reset_game() {
        game.playerTurn = PlayerTurn.PlayerOne
        
        for num in game.board[PlayerTurn.PlayerOne]!.keys {
            game.board[PlayerTurn.PlayerOne]![num] = 0
            game.board[PlayerTurn.PlayerTwo]![num] = 0
        }
    }
    
    func toggle_player_turn() {
        if (game.playerTurn == PlayerTurn.PlayerOne) {
            game.playerTurn = PlayerTurn.PlayerTwo
        } else {
            game.playerTurn = PlayerTurn.PlayerOne
        }
    }
    
    func update_board(numHit : Int, numTimes : Int) {
        game.board[game.playerTurn]![numHit]! += numTimes
    }
}
