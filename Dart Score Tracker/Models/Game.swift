//
//  Game.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import Foundation

class Game : ObservableObject{
    var board : [Player : [Int : Int]] = [
                Player.PlayerOne : [15 : 0, 16 : 0, 17 : 0, 18 : 0, 19 : 0, 20 : 0, 25 : 0],
                Player.PlayerTwo : [15 : 0, 16 : 0, 17 : 0, 18 : 0, 19 : 0, 20 : 0, 25 : 0]]
    
    @Published var playerTurn : Player = Player.PlayerOne
    @Published var score : [Player : Int] = [Player.PlayerOne : 0, Player.PlayerTwo : 0]
    @Published var gameOver : Bool = false
    var winner : Player = Player.PlayerOne
    var tie : Bool = false
}

enum Player {
    case PlayerOne
    case PlayerTwo
}
