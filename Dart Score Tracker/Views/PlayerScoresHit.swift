//
//  PlayerScoresHit.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/17/25.
//

import SwiftUI

struct PlayerScoresHit: View {
    @EnvironmentObject var appManager : AppManager
    let player : Player
    var body: some View {
        // x.circle
        // line.diagonal
        // maybe: x.circle.fill or use two line.diagonals
//        ScrollView(.horizontal, showsIndicators: true){
        HStack{
                if let boardEntries = appManager.game.board[player] { // ✅ Safely unwrap dictionary lookup
                    ForEach(boardEntries.sorted(by: { $0.key < $1.key }), id: \.key) { num, times in
                        Spacer()
                        VStack(spacing: 10){
                            Text(num == 25 ? "C" : "\(num)")
                            let image = appManager.get_icon_string(times: times)
                            if times != 2 {
                                Image(systemName: image)
                                    .foregroundStyle(.black)
                                    .opacity(times == 0 ? 0 : 1)
                            } else {
                                ZStack {
                                    Image(systemName: image)
                                    Image(systemName: image)
                                        .rotationEffect(.degrees(90))
                                }
                            }
                        }
                        .font(.system(size: 28))
                    }
                }
                Spacer()
            }
    }
}

#Preview {
    PlayerScoresHit(player: Player.PlayerOne)
}
