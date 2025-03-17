//
//  SmallDartButtons.swift
//  Dart Score Tracker
//
//  Created by Brendan Kenney on 3/17/25.
//

import SwiftUI

struct SmallDartButtons: View {
    let columns = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
    var body: some View {
        GeometryReader { geometry in
            let buttonSize = geometry.size.width / 5
            ScrollView(.horizontal, showsIndicators: true) {
                HStack {
                    ForEach((15...21).reversed(), id: \.self) { index in
                        SingleDartButton(num: index)
                            .frame(width: buttonSize, height: buttonSize)
                    }
                }
            }
        }
    }
}

#Preview {
    SmallDartButtons()
}
