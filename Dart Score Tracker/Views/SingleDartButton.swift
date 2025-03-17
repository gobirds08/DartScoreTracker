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
                Button(action: {}) {
                    ZStack {
                        RoundedRectangle(cornerSize: CGSize(width: 10, height: 10))
                        Text(num == 25 ? "C" : String(num))
                            .foregroundStyle(.black)
                    }
                }
                .simultaneousGesture(
                    TapGesture(count: 3)
                        .onEnded {
                            appManager.undo()
                            appManager.add_selection(numHit: num, numTimes: 3)
                        }
                )
                .simultaneousGesture(
                    TapGesture(count: 2)
                        .onEnded {
                            appManager.undo()
                            appManager.add_selection(numHit: num, numTimes: 2)
                        }
                )
                .simultaneousGesture(
                    TapGesture()
                        .onEnded {
                            appManager.add_selection(numHit: num, numTimes: 1)
                        }
                )
        

    }
}

#Preview {
    SingleDartButton(num: 1)
        .environmentObject(AppManager())
}
