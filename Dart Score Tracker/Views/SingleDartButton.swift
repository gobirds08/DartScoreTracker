//
//  SingleDartButton.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct SingleDartButton: View {
    @EnvironmentObject var appManager : AppManager
    let num: Int
    var body: some View {
        Button (action: {} ){
            ZStack {
                RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                Text(String(num))
                    .foregroundStyle(.black)
            }
        }
        .gesture(TapGesture(count: 3)
                    .onEnded {
                        appManager.update_board(numHit: num, numTimes: 3)
                    }
                    .exclusively(before: TapGesture(count: 2)
                        .onEnded {
                            appManager.update_board(numHit: num, numTimes: 2)
                        }
                        .exclusively(before: TapGesture()
                            .onEnded {
                                appManager.update_board(numHit: num, numTimes: 1)
                            }
                        )
                    )
        )
    }
}

#Preview {
    SingleDartButton(num: 1)
}
