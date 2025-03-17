//
//  DartButtons.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/16/25.
//

import SwiftUI

struct DartButtons: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()) // 4 columns
        ]
    var body: some View {
        GeometryReader { geometry in
            let buttonSize = (geometry.size.width - 40) / 4
            LazyVGrid(columns: columns, spacing: 10) {
                ForEach((1...20).reversed(), id: \.self) { index in
                    SingleDartButton(num: index)
                        .frame(width: buttonSize, height: buttonSize)
                }
            }
        }
    }
}

#Preview {
    DartButtons()
}
