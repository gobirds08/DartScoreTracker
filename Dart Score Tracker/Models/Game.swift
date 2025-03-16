//
//  Game.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import Foundation

struct Game {
    var board : [PlayerTurn : [Int : Int]] = [
                PlayerTurn.PlayerOne : [1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0,
                6 : 0, 7 : 0, 8 : 0, 9 : 0, 10 : 0, 11 : 0, 12 : 0, 13 : 0, 14 : 0, 15 : 0, 16 : 0, 17 : 0,
                18 : 0, 19 : 0, 20 : 0, 21 : 0], 
                PlayerTurn.PlayerTwo : [1 : 0, 2 : 0, 3 : 0, 4 : 0, 5 : 0,
                6 : 0, 7 : 0, 8 : 0, 9 : 0, 10 : 0, 11 : 0, 12 : 0, 13 : 0, 14 : 0, 15 : 0, 16 : 0, 17 : 0,
                18 : 0, 19 : 0, 20 : 0, 21 : 0]]
    
    var playerTurn : PlayerTurn = PlayerTurn.PlayerOne
}

enum PlayerTurn {
    case PlayerOne
    case PlayerTwo
}
