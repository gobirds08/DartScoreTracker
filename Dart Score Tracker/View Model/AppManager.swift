//
//  AppManager.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import Foundation

class AppManager : ObservableObject {
    @Published var game : Game = Game()
    @Published var selections : [(Int , Int)] = []
    
    
    func reset_game() {
        selections.removeAll()
        game = Game()
    }
    
    func toggle_player_turn() {
        if (game.playerTurn == Player.PlayerOne) {
            game.playerTurn = Player.PlayerTwo
        } else {
            game.playerTurn = Player.PlayerOne
        }
    }
    
    
    func add_selection(numHit : Int, numTimes : Int) {
        selections.append((numHit, numTimes))
    }
    
    func submit() {
        for selection in selections {
            game.board[game.playerTurn]![selection.0]! += selection.1
            if game.board[game.playerTurn]![selection.0]! > 3 {
                if game.board[game.playerTurn]![selection.0]! - selection.1 < 3 {
                    game.score[game.playerTurn]! += (game.board[game.playerTurn]![selection.0]! - 3) * selection.0
                } else {
                    game.score[game.playerTurn]! += selection.0 * selection.1
                }
            }
        }
        selections.removeAll()
        check_game_over()
        toggle_player_turn()
    }
    
    func undo() {
        selections.removeLast()
    }
    
    func is_selections_empty() -> Bool {
        return selections.isEmpty
    }
    
    func check_game_over() {
        for (_, nums) in game.board {
            for (_, times) in nums {
                if times < 3 {
                    return
                }
            }
        }
        game.gameOver = true
        if game.score[Player.PlayerOne]! > game.score[Player.PlayerTwo]! {
            game.winner = Player.PlayerOne
        } else if game.score[Player.PlayerOne]! < game.score[Player.PlayerTwo]!  {
            game.winner = Player.PlayerTwo
        } else {
            game.tie = true
        }
    }
    
    func selection_to_string(selection : (Int, Int)) -> String {
        var output_string = ""
        
        if selection.1 > 1 {
            output_string += "\(selection.1)x"
        }
        output_string += "\(selection.0)"
        
        return output_string
    }
    
    func get_icon_string(times: Int) -> String {
        if times >= 3 {
            return "x.circle"
        } else if times >= 0{
            return "line.diagonal"
        }
        return ""
    }
}
