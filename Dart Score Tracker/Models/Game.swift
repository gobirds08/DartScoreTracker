//
//  Game.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import Foundation

enum Player: String, Codable {
    case PlayerOne
    case PlayerTwo
}

class Game: ObservableObject, Codable {
    var board: [Player: [Int: Int]]
    
    @Published var playerTurn: Player
    @Published var score: [Player: Int]
    @Published var gameOver: Bool
    var winner: Player
    var tie: Bool

    // Custom Decoder
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.board = try container.decode([Player: [Int: Int]].self, forKey: .board)
        self.playerTurn = try container.decode(Player.self, forKey: .playerTurn)
        self.score = try container.decode([Player: Int].self, forKey: .score)
        self.gameOver = try container.decode(Bool.self, forKey: .gameOver)
        self.winner = try container.decode(Player.self, forKey: .winner)
        self.tie = try container.decode(Bool.self, forKey: .tie)
    }

    // Custom Encoder
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(board, forKey: .board)
        try container.encode(playerTurn, forKey: .playerTurn)
        try container.encode(score, forKey: .score)
        try container.encode(gameOver, forKey: .gameOver)
        try container.encode(winner, forKey: .winner)
        try container.encode(tie, forKey: .tie)
    }

    // Enum for CodingKeys
    enum CodingKeys: String, CodingKey {
        case board, playerTurn, score, gameOver, winner, tie
    }

    // Default Initializer
    init() {
        self.board = [
            Player.PlayerOne: [15: 0, 16: 0, 17: 0, 18: 0, 19: 0, 20: 0, 25: 0],
            Player.PlayerTwo: [15: 0, 16: 0, 17: 0, 18: 0, 19: 0, 20: 0, 25: 0]
        ]
        self.playerTurn = .PlayerOne
        self.score = [.PlayerOne: 0, .PlayerTwo: 0]
        self.gameOver = false
        self.winner = .PlayerOne
        self.tie = false
    }
}

